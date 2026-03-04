<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Query\Builder as QueryBuilder;

class SupabaseQueryBuilder extends Builder
{
    public function __construct()
    {
        // Pas de constructeur parent pour éviter les connexions SQL
    }
    
    public function where($column, $operator = null, $value = null)
    {
        return $this;
    }
    
    public function orderBy($column, $direction = 'asc')
    {
        return $this;
    }
    
    public function get($columns = ['*'])
    {
        return new \Illuminate\Database\Eloquent\Collection();
    }
    
    public function first($columns = ['*'])
    {
        return null;
    }
    
    public function find($id, $columns = ['*'])
    {
        return null;
    }
    
    public function count()
    {
        return 0;
    }
}
