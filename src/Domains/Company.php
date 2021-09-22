<?php

declare(strict_types=1);

namespace App\Domains;

use Yii;

final class Company
{
    public const ESCOLINHA = 'ESCOLINHA';
    public const STUDIOSTILO = 'STUDIOSTILO';

    public static function values(): array
    {
        return [self::ESCOLINHA, self::STUDIOSTILO];
    }

    public static function labels(): array
    {
        return [
            self::ESCOLINHA => 'Escolinha Nota 10',
            self::STUDIOSTILO => 'Studio Stilo'
        ];
    }

    public static function getLabel(string $company): string
    {
        $labels = self::labels();
        return $labels[$company];
    }

    public static function config(string $company): array
    {
        $config = [
            self::ESCOLINHA => [
                'representativeName' => 'Maria Francilene Medeiros Mendonça',
                'phone' => '(85) 9.8888.2304',
                'email' => 'lenemmendonca@gmail.com',
                'logo' => Yii::getAlias("@webroot/images/logo-". strtolower($company) .".jpg"),
                'logoWidth' => 100,
                'signature' => Yii::getAlias("@webroot/images/signature-". strtolower($company) .".png"),
                'signatureWidth' => 240,
            ],
            self::STUDIOSTILO => [
                'representativeName' => 'Dayanny Maria Medeiros Mendonça de Sena',
                'phone' => '(85) 9.8805.1529 / (85) 98879.8206',
                'email' => 'contato@studiostilo.com.br',
                'logo' => Yii::getAlias("@webroot/images/logo-". strtolower($company) .".png"),
                'logoWidth' => 200,
                'signature' => Yii::getAlias("@webroot/images/signature-". strtolower($company) .".png"),
                'signatureWidth' => 340,
            ],
        ];

        return $config[$company];
    }
}
