.class public final Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v17, "Item_Layer"

    const-string v18, "Item_ParentId"

    const-string v1, "Item_RowId"

    const-string v2, "Item_Type"

    const-string v3, "Item_Id"

    const-string v4, "Item_Width"

    const-string v5, "Item_Height"

    const-string v6, "Item_Weight"

    const-string v7, "Item_Bg_Color"

    const-string v8, "Item_Gravity"

    const-string v9, "Item_TxtColor_or_PollingInterval"

    const-string v10, "Item_Txt_or_ImgPath"

    const-string v11, "Item_TxtStyle_or_ScaleType"

    const-string v12, "Item_TxtSize"

    const-string v13, "Item_Url"

    const-string v14, "Item_Orientation"

    const-string v15, "Item_PackageName"

    const-string v16, "Item_Attributes"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final deleteRecord([Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "Delete from ADMIN_REF where "

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ADMIN_REF"

    const-string/jumbo v1, "policyName=?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final getAdminUid(Ljava/lang/String;)I
    .locals 2

    const-string v0, "ADMIN_REF"

    const-string/jumbo v1, "policyName"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Configured admin UID: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LSOStorageProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const-string v0, "Insert record: "

    const-string v1, " -- "

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string v0, ": Failed to insert record - "

    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-wide v2
.end method

.method public final loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    .locals 12

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0x63

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    :cond_1
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    :cond_2
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_3

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    :cond_3
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    const/4 v7, 0x1

    const-string v8, "LSOStorageProvider"

    if-ne v4, v7, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "LoadItemData -- "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, v6, :cond_6

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    :cond_6
    const/16 v4, 0xf

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    const/16 v9, 0x8

    const/16 v10, 0xa

    const/16 v11, 0x9

    if-eq v4, v0, :cond_14

    if-eq v4, v1, :cond_11

    if-eq v4, v2, :cond_a

    if-eq v4, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    const/16 p0, 0xe

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "LoadWidgetData -- "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_c

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LoadContainerData -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "Item_ParentId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p2, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const-string v1, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_2

    :cond_d
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_e

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_e
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_10
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurred accessing Enterprise db "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :goto_2
    return-void

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_11
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq p0, v6, :cond_12

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(I)V

    :cond_12
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setURL(Ljava/lang/String;J)V

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "LoadImageData -- "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    :cond_15
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq p0, v6, :cond_16

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextColor(I)V

    :cond_16
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq p0, v6, :cond_17

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    :cond_17
    const/16 p0, 0xb

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    cmpl-float p2, p0, v5

    if-eqz p2, :cond_18

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(F)V

    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "LoadTextData -- "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final resetOverlayData(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-string v0, "LOCKSCREEN_OVERLAY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "SELECT COUNT(*) from LOCKSCREEN_OVERLAY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "LSOStorageProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string/jumbo v1, "getCount(LOCKSCREEN_OVERLAY) - "

    invoke-static {v4, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord([Ljava/lang/String;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final resetWallpaperData()V
    .locals 1

    const-string v0, "LOCKSCREEN_WALLPAPER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord([Ljava/lang/String;)V

    const-string p0, "LSOStorageProvider"

    const-string/jumbo v0, "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .locals 6

    if-eqz p3, :cond_5

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    const-string v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p3, p4, v4, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    return p3

    :cond_0
    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-eqz v3, :cond_4

    const-string/jumbo p3, "policyName"

    invoke-static {p3, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "adminUid"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_1

    const-string/jumbo p1, "accountObject"

    invoke-virtual {p5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    const-string p1, "ADMIN_REF"

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, p4

    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    :cond_3
    return p1

    :cond_4
    return p3

    :cond_5
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string/jumbo p1, "Parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v5, 0x10

    aget-object v6, v4, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v6, 0x11

    aget-object v6, v4, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v6, 0x1

    aget-object v7, v4, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getUpdatedFields()[I

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, "LSOStorageProvider"

    if-eqz v7, :cond_1

    array-length v10, v7

    if-nez v10, :cond_2

    :cond_1
    move/from16 v16, v1

    move/from16 v18, v6

    goto/16 :goto_3

    :cond_2
    move v10, v1

    move v11, v10

    :goto_0
    array-length v12, v7

    if-ge v10, v12, :cond_19

    if-nez v11, :cond_19

    aget v12, v7, v10

    const/4 v13, 0x2

    if-eq v12, v6, :cond_18

    const/4 v14, 0x3

    if-eq v12, v13, :cond_17

    if-eq v12, v8, :cond_16

    const/4 v15, 0x5

    move/from16 v16, v1

    const/16 v1, 0x8

    if-eq v12, v1, :cond_15

    if-eq v12, v5, :cond_14

    move/from16 p3, v1

    const/16 v1, 0x20

    if-eq v12, v1, :cond_13

    const/16 v1, 0x40

    if-eq v12, v1, :cond_12

    const/16 p4, 0xa

    const/16 v1, 0x200

    const/16 v17, 0x9

    const/16 v5, 0x100

    move/from16 v18, v6

    const/16 v6, 0x80

    if-eq v3, v13, :cond_d

    if-eq v3, v14, :cond_9

    if-eq v3, v8, :cond_5

    if-eq v3, v15, :cond_3

    const-string/jumbo v1, "unknown LSOItem"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, v18

    goto/16 :goto_2

    :cond_3
    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    if-eq v12, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v5, 0xe

    aget-object v5, v4, v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eq v12, v6, :cond_7

    if-eq v12, v5, :cond_6

    goto/16 :goto_2

    :cond_6
    aget-object v5, v4, v17

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0xd

    aget-object v5, v4, v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v1

    sget-object v6, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v1, v6, :cond_8

    move/from16 v1, v16

    goto :goto_1

    :cond_8
    move/from16 v1, v18

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v13, p1

    check-cast v13, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    if-eq v12, v6, :cond_c

    if-eq v12, v5, :cond_b

    if-eq v12, v1, :cond_a

    goto/16 :goto_2

    :cond_a
    aget-object v1, v4, p4

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0xc

    aget-object v1, v4, v1

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v4, p3

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getPollingInterval()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    :cond_c
    aget-object v1, v4, v17

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v13, p1

    check-cast v13, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    if-eq v12, v6, :cond_11

    if-eq v12, v5, :cond_10

    if-eq v12, v1, :cond_f

    const/16 v1, 0x400

    if-eq v12, v1, :cond_e

    goto/16 :goto_2

    :cond_e
    aget-object v1, v4, p4

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_f
    const/16 v1, 0xb

    aget-object v1, v4, v1

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSizeAsFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_2

    :cond_10
    aget-object v1, v4, p3

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_11
    aget-object v1, v4, v17

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    move/from16 v18, v6

    const/16 v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    :cond_13
    move/from16 v18, v6

    const/4 v1, 0x7

    aget-object v1, v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_14
    move/from16 v18, v6

    const/4 v1, 0x6

    aget-object v1, v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_15
    move/from16 v18, v6

    aget-object v1, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    :cond_16
    move/from16 v16, v1

    move/from16 v18, v6

    aget-object v1, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_17
    move/from16 v16, v1

    move/from16 v18, v6

    aget-object v1, v4, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_18
    move/from16 v16, v1

    move/from16 v18, v6

    aget-object v1, v4, v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v16

    move/from16 v6, v18

    const/16 v5, 0x10

    goto/16 :goto_0

    :cond_19
    move/from16 v16, v1

    move/from16 v18, v6

    if-eqz v11, :cond_1a

    const/4 v2, 0x0

    :cond_1a
    :goto_3
    if-nez v2, :cond_1b

    const-string v0, "Cannot construct content values"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_1b
    const-string v1, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1c

    return v16

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    if-eq v3, v8, :cond_1d

    return v18

    :cond_1d
    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    move/from16 v4, v16

    move/from16 v6, v18

    :goto_4
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v5

    if-ge v4, v5, :cond_1e

    if-eqz v6, :cond_1e

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    move/from16 v7, p2

    invoke-virtual {v0, v5, v7, v1, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1e
    if-nez v6, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to store LSOItemData for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with ParendId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return v6
.end method

.method public final wipeLayerData(I)V
    .locals 3

    const-string v0, "LOCKSCREEN_OVERLAY"

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    :cond_0
    const-string v1, "Item_Layer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
