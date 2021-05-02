<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit186e80bc5f2bf76a01ce742346288951
{
    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Stripe\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Stripe\\' => 
        array (
            0 => __DIR__ . '/..' . '/stripe/stripe-php/lib',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit186e80bc5f2bf76a01ce742346288951::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit186e80bc5f2bf76a01ce742346288951::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
