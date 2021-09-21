<?php

namespace App\Domains\Client;

use App\Domains\Company;
use App\Infra\ActiveRecord\Validators\RemoveSymbolsFilter;

class ClientSearch extends Client
{
    public function init()
    {
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'email'], 'string', 'max' => 60],
            ['company', 'in', 'range' => Company::values()],
            ['cpf', RemoveSymbolsFilter::class]
        ];
    }
}
