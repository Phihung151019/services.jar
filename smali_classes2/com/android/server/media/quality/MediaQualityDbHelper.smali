.class public final Lcom/android/server/media/quality/MediaQualityDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE picture_quality(_id INTEGER PRIMARY KEY AUTOINCREMENT,_type INTEGER,_name STRING,_package STRING,_input_id STRING,settings TEXT)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE sound_quality(_id INTEGER PRIMARY KEY AUTOINCREMENT,_type INTEGER,_name STRING,_package STRING,_input_id STRING,settings TEXT)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
