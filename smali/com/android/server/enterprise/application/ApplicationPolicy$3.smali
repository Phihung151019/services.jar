.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$3;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$uid:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "enterprise_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    const-string v3, "ApplicationPolicy"

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresent()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "Failed talking with enterprise policy service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const-string v4, "ApplicationIcon"

    const-string/jumbo v5, "pkgname"

    const/4 v6, 0x0

    if-nez v2, :cond_7

    const-string/jumbo v2, "clearApplicationData"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v7, "SELECT * FROM ApplicationIcon"

    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v6, v7

    goto :goto_4

    :cond_3
    :goto_1
    invoke-virtual {v2, v4, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateHashMapAndNotifyApplication(ILjava/util/List;)V

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_c

    :goto_6
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    :cond_7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v7, "clearApplicationDataForUid - uid = "

    invoke-static {v1, v7, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "SELECT * FROM ApplicationIcon WHERE nameowner = "

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v6, v7

    goto :goto_d

    :catch_3
    move-exception v3

    move-object v6, v7

    goto :goto_a

    :cond_9
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "nameowner = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v6, v7

    goto :goto_8

    :catchall_3
    move-exception p0

    goto :goto_d

    :catch_4
    move-exception v3

    goto :goto_a

    :cond_a
    :goto_8
    if-eqz v6, :cond_b

    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :goto_a
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v6, :cond_b

    goto :goto_9

    :cond_b
    :goto_b
    invoke-virtual {v0, v2, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateHashMapAndNotifyApplication(ILjava/util/List;)V

    :goto_c
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemUIMonitor()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState(I)V

    return-void

    :goto_d
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p0
.end method
