.class public final Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "VZWResetSettingReceiver : onReceive() intentAction"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result p1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "changeKeyboardForVZWResetSetting "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "SamsungIME.Subtype"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const-string/jumbo v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    invoke-static {v1, p2, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    :goto_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "KeyboardSubTypeReceiver : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "InputMethodManagerService"

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unexpected intent "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    :goto_5
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    if-ge v3, p2, :cond_9

    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/view/Display;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    const-string/jumbo p1, "Status-bar Animating : Hide Keyboard action="

    invoke-static {p1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/16 v2, 0x3d

    invoke-virtual {p2, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->getSendingUserId()I

    move-result p1

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b

    :try_start_2
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, p2, :cond_b

    monitor-exit v0

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    monitor-exit v0

    goto :goto_9

    :goto_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_c
    const-string p0, "InputMethodManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unexpected intent "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :pswitch_3
    const-string/jumbo p1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "shopdemo"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string/jumbo p2, "SEC_FLOATING_FEATURE_SIP_CONFIG_ADDTIONAL_INPUT_METHOD"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string/jumbo p2, "SOGOU_CUSTOMIZED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string/jumbo p1, "com.sohu.inputmethod.sogou.samsung/.SogouIME"

    goto :goto_a

    :cond_d
    const-string/jumbo p1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    :goto_a
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "InputMethodManagerService"

    if-nez p2, :cond_e

    const-string/jumbo p0, "setDefaultIMEForKeyboard, IME not installed: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    :try_start_3
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result p2

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p2, v0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setDefaultIMEForKeyboard "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
