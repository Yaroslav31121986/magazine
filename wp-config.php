<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'mybd' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'Joker' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'Footboll777' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '12vvRQL@;:Y{]E7j9/N,]D(N&74T}P0*N4S3&`]Ta/W)lUXM7G9%T*br;}9KWJD!' );
define( 'SECURE_AUTH_KEY',  '&Hn|mVtC5(0Jt{*%rXrf+qTf2%.j+{(D~}E(ukJ6n`6kpm(1>s5ny3v`@&|2R+x&' );
define( 'LOGGED_IN_KEY',    'agy70=AK6iyJfDTW`QOy^%v8-{<Emf3l{@M*aSx&kLy>kuci]^p1rL&)iiq{G7e1' );
define( 'NONCE_KEY',        '[F}1rltWgieo)3,A,p0aM7{aUtdQg|rma!}gqZrLw.F@-=z Q !gx}#CC A`bja0' );
define( 'AUTH_SALT',        'r*K!cL+=(%/G9UFp0|#>R?h{&Jx6H{cT~+-+9!YOaM0c@7W8<7PE{xaFFy3CqKV2' );
define( 'SECURE_AUTH_SALT', '%lrXZTc7n~joU!Vq,@B5ucNMCjRc^u~IVFM?g1{MDuP]>M3&+ENAmfPA-{L:t2|7' );
define( 'LOGGED_IN_SALT',   '0+]sdoIy;[[cp*pLQB5,0&j&F1pqi{Eb:?&6JH^K4.>lKP2MF[uX6mu[@sgqA{OG' );
define( 'NONCE_SALT',       'cOq3=ia1)sKfcl)/$Hfm4.hn@Q=}O#mF]KCJq]|vi8LA,+#`]h,4tKD=XZ}NzQY`' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
