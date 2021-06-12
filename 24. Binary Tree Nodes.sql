SELECT 
    N, 
    case 
        when P IS NULL then 'Root'
        when (SELECT COUNT(*) FROM BST WHERE P = B.N) > 0 then 'Inner'
        else 'Leaf'
    end
FROM BST AS B 
ORDER BY N;
