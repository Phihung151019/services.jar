.class public final Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 8

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_keyboard_block"

    const/4 v2, 0x1

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Access Control keyboard block changed to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentImeUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    return-void

    :pswitch_0
    const-string p1, "InputMethodManagerService"

    const-string v0, "Access Control changed to:"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentImeUserId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "universal_switch_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "universalSwitchState changed to:"

    const-string v2, "InputMethodManagerService"

    invoke-static {p1, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v3, p1, v1, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string p0, "Failed to return the previous IME becuase the stored info is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restorePreviousUsedInputMethod :  UniversalSwitch, previous inputmethod : : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    const-string v6, " currentIME: "

    const-string v7, " InputMethodinfo: "

    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
