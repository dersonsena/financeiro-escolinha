<?php

use App\Infra\Migration\MigrationAbstract;

/**
 * Class m210921_225812_add_company_columns_in_tables
 */
class m210921_225812_add_company_columns_in_tables extends MigrationAbstract
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('{{%clients}}', 'company', $this->enum(['ESCOLINHA', 'STUDIOSTILO'])->notNull()->defaultValue('ESCOLINHA')->after('email'));
        $this->addColumn('{{%bills}}', 'company', $this->enum(['ESCOLINHA', 'STUDIOSTILO'])->notNull()->defaultValue('ESCOLINHA')->after('bill_parent_id'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%clients}}', 'company');
        $this->dropColumn('{{%bills}}', 'company');
    }
}
