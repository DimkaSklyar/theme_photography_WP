<?php
/**
 * photography functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package photography
 */

if ( ! function_exists( 'photography_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function photography_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on photography, use a find and replace
		 * to change 'photography' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'photography', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'photography' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'photography_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'photography_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function photography_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'photography_content_width', 640 );
}
add_action( 'after_setup_theme', 'photography_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function photography_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'photography' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'photography' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'photography_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function photography_scripts() {

	wp_enqueue_style( 'photography-style', get_stylesheet_uri() );

	wp_enqueue_script( 'photography-script', get_template_directory_uri() . '/js/scripts.min.js', array(), '1', true );

	wp_enqueue_script( 'photography-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'photography-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'photography_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

class myMenu extends Walker_Nav_Menu {
	/**
	 * @see Walker::start_el()
	 * @since 3.0.0
	 *
	 * @param string $output
	 * @param object $item Объект элемента меню, подробнее ниже.
	 * @param int $depth Уровень вложенности элемента меню.
	 * @param object $args Параметры функции wp_nav_menu
	 */
	function start_el(&$output, $item, $depth, $args) {
		global $wp_query;           
		/*
		 * Некоторые из параметров объекта $item
		 * ID - ID самого элемента меню, а не объекта на который он ссылается
		 * menu_item_parent - ID родительского элемента меню
		 * classes - массив классов элемента меню
		 * post_date - дата добавления
		 * post_modified - дата последнего изменения
		 * post_author - ID пользователя, добавившего этот элемент меню
		 * title - заголовок элемента меню
		 * url - ссылка
		 * attr_title - HTML-атрибут title ссылки
		 * xfn - атрибут rel
		 * target - атрибут target
		 * current - равен 1, если является текущим элементов
		 * current_item_ancestor - равен 1, если текущим является вложенный элемент
		 * current_item_parent - равен 1, если текущим является вложенный элемент
		 * menu_order - порядок в меню
		 * object_id - ID объекта меню
		 * type - тип объекта меню (таксономия, пост, произвольно)
		 * object - какая это таксономия / какой тип поста (page /category / post_tag и т д)
		 * type_label - название данного типа с локализацией (Рубрика, Страница)
		 * post_parent - ID родительского поста / категории
		 * post_title - заголовок, который был у поста, когда он был добавлен в меню
		 * post_name - ярлык, который был у поста при его добавлении в меню
		 */
		$indent = ( $depth ) ? str_repeat( "\t", $depth ) : '';
 
		/*
		 * Генерируем строку с CSS-классами элемента меню
		 */
		$class_names = $value = '';
		$classes = empty( $item->classes ) ? array() : (array) $item->classes;
 
		// функция join превращает массив в строку
		$class_names = join( ' ', apply_filters( 'nav_menu_css_class', array_filter( $classes ), $item ) );
		$class_names = ' class="' . esc_attr( $class_names ) . '"';
 
		/*
		 * Генерируем ID элемента
		 */
		$id = apply_filters( 'nav_menu_item_id', 'menu-item-'. $item->ID, $item, $args );
		$id = strlen( $id ) ? ' id="' . esc_attr( $id ) . '"' : '';
 
		/*
		 * Генерируем элемент меню
		 */
		$output .= $indent . '<li' . $id . $value . $class_names .'>';
 
		// атрибуты элемента, title="", rel="", target="" и href=""
		$attributes  = ! empty( $item->attr_title ) ? ' title="'  . esc_attr( $item->attr_title ) .'"' : '';
		$attributes .= ! empty( $item->target )     ? ' target="' . esc_attr( $item->target     ) .'"' : '';
		$attributes .= ! empty( $item->xfn )        ? ' rel="'    . esc_attr( $item->xfn        ) .'"' : '';
		$attributes .= ! empty( $item->url )        ? ' href="'   . esc_attr( $item->url        ) .'"' : '';
		// ссылка и околоссылочный текст
		$item_output = $args->before;
		$item_output .= '<a'. $attributes .'>';
		$item_output .= $args->link_before . apply_filters( 'the_title', $item->title, $item->ID ) . $args->link_after;
		$item_output .= '</a>';
		$item_output .= $args->after;
 
 		$output .= apply_filters( 'walker_nav_menu_start_el', $item_output, $item, $depth, $args );
	}
}

// добавляет вызов функции при инициализации административного раздела
 add_action('admin_init', 'category_custom_fields', 1);
// функция расширения функционала административного раздела
function category_custom_fields() {
add_action('category_edit_form_fields', 'category_custom_fields_form');
add_action('edited_category', 'category_custom_fields_save');
}

function category_custom_fields_form($tag) {
$t_id = $tag->term_id;
$cat_meta = get_option("category_$t_id");
?>
<!-- изображение 1 -->
<tr class="form-field">
<th scope="row" valign="top"><label for="extra1">Изображение:</label></th>
<td>
<a href="#" class="upload_cat_img">Загрузить</a>
<input class="cat_img" type="text" name="Cat_meta[cat_title]" id="Cat_meta[cat_title]" size="25" style="width:60%;" value="<?php
echo
$cat_meta['cat_title'] ? $cat_meta['cat_title'] : '';
?>"><br />
</td>
</tr>
<!-- текст -->
<tr class="form-field">
<th scope="row" valign="top"><label for="extra1">Текст кнопки секции:</label></th>
<td>
<textarea name="Cat_meta[cat_text1]" id="Cat_meta[cat_text1]"><?php echo $cat_meta['cat_text1'] ? $cat_meta['cat_text1'] : ''; ?></textarea>
<!--<input class="cat_img" type="text" name="Cat_meta[cat_title]" id="Cat_meta[cat_title]" size="25" style="width:60%;" value="<?php
echo
$cat_meta['cat_text1'] ? $cat_meta['cat_text1'] : '';
?>"> -->
<?php
}

function category_custom_fields_save($term_id) {
if (isset($_POST['Cat_meta'])) {
$t_id = $term_id;
$cat_meta = get_option("category_$t_id");
$cat_keys = array_keys($_POST['Cat_meta']);
foreach ($cat_keys as $key) {
if (isset($_POST['Cat_meta'][$key])) {
$cat_meta[$key] = $_POST['Cat_meta'][$key];
}
}
//save the option array
update_option("category_$t_id", $cat_meta);
}
}

// add js scripts
function true_include_myuploadscript() {
	// у вас в админке уже должен быть подключен jQuery, если нет - раскомментируйте следующую строку:
	wp_enqueue_script('jquery');
	// дальше у нас идут скрипты и стили загрузчика изображений WordPress
	if ( ! did_action( 'wp_enqueue_media' ) ) {
		wp_enqueue_media();
	}
	// само собой - меняем admin.js на название своего файла
 	wp_enqueue_script( 'myuploadscript', get_stylesheet_directory_uri() . '/settings.js', array('jquery'), false, true );
}
 
add_action( 'admin_enqueue_scripts', 'true_include_myuploadscript' );


//произвольное поле галереии изображений

function metaimage_meta_box() {  
    add_meta_box(  
        'metaimage_meta_box', // Идентификатор(id)
        'Галерея изображений', // Заголовок области с мета-полями(title)
        'show_my_metaimage_meta_box', // Вызов(callback)
        'post', // где будет отображаться, post означает в форме стандартного добавления записи
        'normal',
        'high');
}  
 
add_action('add_meta_boxes', 'metaimage_meta_box'); // Запускаем функцию
 
// Массив с необходимыми полями
$multiupload_fields = array(
    array(
    'label' => 'Галерея',
    'desc'  => 'Загрузите нужные изображения',
    'id'    => 'multiupload',
    'type'  => 'multiupload'
    )
);

function show_my_metaimage_meta_box() {  
global $multiupload_fields; // Обозначим наш массив с полями глобальным
global $post;  // Глобальный $post для получения id создаваемого/редактируемого поста
// Выводим скрытый input, для верификации. Безопасность прежде всего!
echo '<input type="hidden" name="custom_meta_box_nonce" value="'.wp_create_nonce(basename(__FILE__)).'" />';  
 
    // Начинаем выводить таблицу с полями через цикл
    echo '<table class="form-table">';  
    foreach ($multiupload_fields as $field) {  
        // Получаем значение если оно есть для этого поля
        $meta = get_post_meta($post->ID, $field['id'], true);  
        // Начинаем выводить таблицу
        echo '<tr>
                <th><label for="'.$field['id'].'">'.$field['label'].'</label></th>
                <td>';  
                switch($field['type']) {  
                    case 'multiupload':
                        echo '<a class="repeatable-add button" href="#">Добавить поле</a>
                                <ul id="'.$field['id'].'-repeatable" class="custom_repeatable">';
                        $i = 0;
                        if ($meta) {
                            foreach($meta as $row) {
                                $image = wp_get_attachment_image_src($row, 'medium'); $image = $image[0];
                                if(empty($row)) $row = "http://placehold.it/100x100";
                                echo 
                                    '<li style="display: inline-block;margin-right: 20px;position:relative;">
                                        <img style="width:100px;" class="custom_preview_image sort hndle" src="'.$row.'" />
                                        <div style="position: absolute;top:0;">
                                        <input name="'.$field['id'].'['.$i.']" id="'.$field['id'].'" type="hidden" class="custom_upload_image" value="'.$row.'" />
                                        <a style="text-decoration: none;" title="Добавить изображение" class="custom_upload_file_button" href="#"><span class="dashicons dashicons-plus"></span></a>
                                        <a style="text-decoration: none;" title="Удалить изображение" class="repeatable-remove" href="#"><span class="dashicons dashicons-no-alt"></span></a>
                                        </div>
                                    </li>';
                                $i++;
                            }
                        } else {
                            echo 
                            '<li style="display: inline-block;margin-right: 20px;position:relative;">
                                <img style="width:100px;" src="http://placehold.it/100x100" class="custom_preview_image sort hndle" alt="" />
                                <div style="position: absolute;top:0;">
                                <span class="dashicons dashicons-menu"></span>
                                <input name="'.$field['id'].'['.$i.']" id="'.$field['id'].'" type="hidden" class="custom_upload_image" value="" />
                                <a style="text-decoration: none;" title="Добавить изображение" class="custom_upload_file_button" href="#"><span class="dashicons dashicons-plus"></span></a>
                                <a style="text-decoration: none;" title="Удалить изображение" class="repeatable-remove" href="#"><span class="dashicons dashicons-no-alt"></span></a>
                                </div>
                            </li>';
                        }
                        echo '</ul>
                            <span class="description">'.$field['desc'].'</span>';
                    break;
 
                }
        echo '</td></tr>';  
    }  
    echo '</table>';
}

function save_my_metaimage_meta_box($post_id) {  
    global $multiupload_fields;  // Массив с нашими полями
 
    // проверяем наш проверочный код
    if (!wp_verify_nonce($_POST['custom_meta_box_nonce'], basename(__FILE__)))  
        return $post_id;  
    // Проверяем авто-сохранение
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE)  
        return $post_id;  
    // Проверяем права доступа  
    if ('image_meta_box_book' == $_POST['post_type']) {  
        if (!current_user_can('edit_page', $post_id))  
            return $post_id;  
        } elseif (!current_user_can('edit_post', $post_id)) {  
            return $post_id;  
    }  
 
    // Если все отлично, прогоняем массив через foreach
    foreach ($multiupload_fields as $field) {  
        $old = get_post_meta($post_id, $field['id'], true); // Получаем старые данные (если они есть), для сверки
        $image_meta_box = $_POST[$field['id']];
        if($field['type'] == 'multiupload')
                     $image_meta_box = array_values($image_meta_box);
        if ($image_meta_box && $image_meta_box != $old) {  // Если данные новые
            update_post_meta($post_id, $field['id'], $image_meta_box); // Обновляем данные
        } elseif ('' == $image_meta_box && $old) {  
            delete_post_meta($post_id, $field['id'], $old); // Если данных нету, удаляем мету.
        }  
    } // end foreach  
}  
add_action('save_post', 'save_my_metaimage_meta_box'); // Запускаем функцию сохранения

if(is_admin()) {
    wp_enqueue_script('imagefield', get_template_directory_uri().'/js/multiupload.js'); // Пропишите свой путь к файлу!!!
}