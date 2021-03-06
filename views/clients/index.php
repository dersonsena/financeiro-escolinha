<?php
/* @var $this yii\web\View */
/* @var $searchModel \App\Domains\Client\ClientSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

use App\Domains\Client\Client;
use App\Domains\Client\ClientActions;
use App\Domains\Company;
use App\Infra\ActiveRecord\ActiveRecordAbstract;
use App\Infra\GridView\ActionGridColumn;
use App\Infra\GridView\LinkDataColumn;
use App\Infra\Widgets\ButtonCreator\ButtonCreator;
use yii\grid\DataColumn;
use yii\helpers\Html;
use yii\grid\GridView;

$this->title = $this->context->getControllerDescription();
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bill-index">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= ButtonCreator::build(ClientActions::create($searchModel)) ?>
        <?= ButtonCreator::build(ClientActions::import($searchModel)) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute' => 'name',
                'class' => LinkDataColumn::class
            ],
            [
                'attribute' => 'email',
                'headerOptions' => ['style' => 'width: 350px'],
            ],
            [
                'attribute' => 'cpf',
                'format' => 'cpf',
                'headerOptions' => ['class' => 'text-center', 'style' => 'width: 190px'],
                'contentOptions' => ['class' => 'text-center'],
            ],
            [
                'attribute' => 'company',
                'filter' => Company::labels(),
                'headerOptions' => ['class' => 'text-center', 'style' => 'width: 190px'],
                'contentOptions' => ['class' => 'text-center'],
                'content' => function (Client $model, $key, $index, DataColumn $column) {
                    return Company::getLabel($model->company);
                }
            ],
            [
                'class' => ActionGridColumn::class,
                'domainActions' => ClientActions::class
            ]
        ],
    ]) ?>
</div>
