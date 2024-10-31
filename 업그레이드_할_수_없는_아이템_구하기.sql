SELECT 
    I.ITEM_ID AS ITEM_ID,
    I.ITEM_NAME AS ITEM_NAME,
    I.RARITY AS RARITY
FROM ITEM_INFO I
WHERE I.ITEM_ID NOT IN (
    SELECT DISTINCT(PARENT_ITEM_ID)
    FROM ITEM_TREE
    WHERE PARENT_ITEM_ID IS NOT NULL
)
ORDER BY I.ITEM_ID DESC;
