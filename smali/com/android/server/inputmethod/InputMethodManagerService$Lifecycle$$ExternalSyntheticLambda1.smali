.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->f$1:I

    const-string/jumbo v1, "onUserUnlocking: restore last ime before toolkitHbd="

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(IZ)V

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    monitor-exit v2

    :goto_0
    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->f$1:I

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_1
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
