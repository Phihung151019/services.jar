.class public final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDataClearedPackages:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onBeginPackageChanges()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onFinishPackageChanges()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x3

    if-ge v12, v9, :cond_4

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object v13, v15

    :cond_0
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v14, :cond_2

    const-string v1, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Input method uninstalled, disabling: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    const-string v1, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Input method reinstalling, clearing additional subtypes: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move/from16 v17, v11

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v1

    iget-object v6, v1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance v6, Landroid/util/ArrayMap;

    iget-object v9, v1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v6, v9}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v6, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    goto :goto_4

    :cond_6
    new-instance v7, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    invoke-direct {v7, v6}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    move-object v6, v7

    goto :goto_4

    :cond_7
    :goto_3
    move-object v6, v1

    :goto_4
    if-eq v6, v1, :cond_8

    iget-object v1, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-static {v2, v6, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    :cond_8
    iget-object v1, v3, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    iget-object v3, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    if-ne v3, v1, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-eq v4, v6, :cond_b

    :goto_5
    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_9

    iget-object v7, v3, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_5

    :cond_c
    sget-object v10, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v10, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v10, v9, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    :cond_e
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    :cond_f
    throw v0

    :goto_9
    if-eqz v3, :cond_10

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_e

    :cond_10
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_11

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :catchall_4
    move-exception v0

    goto/16 :goto_f

    :cond_11
    const/16 v17, 0x1

    if-eqz v3, :cond_12

    monitor-exit v4

    goto/16 :goto_e

    :cond_12
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(IZ)V

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    if-ne v1, v14, :cond_14

    :cond_13
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_b

    :catch_0
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_14

    :try_start_6
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current input method removed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "InputMethodManagerService"

    const-string/jumbo v3, "Unsetting current input method"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V

    move/from16 v11, v17

    const/4 v10, 0x0

    goto :goto_c

    :cond_14
    move-object v10, v13

    const/4 v11, 0x0

    :goto_c
    if-nez v10, :cond_15

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v1

    goto :goto_d

    :cond_15
    if-nez v11, :cond_16

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move/from16 v1, v17

    goto :goto_d

    :cond_16
    move v1, v11

    :goto_d
    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked(I)V

    :cond_17
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_e
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_f
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method

.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11

    const/4 p1, 0x1

    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    array-length v7, p2

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, p2, v8

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez p4, :cond_0

    monitor-exit p3

    return p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string p4, ""

    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {p2, v0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    monitor-exit p3

    return p1

    :cond_1
    add-int/2addr v8, p1

    goto :goto_1

    :cond_2
    add-int/2addr v5, p1

    goto :goto_0

    :cond_3
    monitor-exit p3

    return v4

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
