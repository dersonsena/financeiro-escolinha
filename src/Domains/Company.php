<?php

declare(strict_types=1);

namespace App\Domains;

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
}
