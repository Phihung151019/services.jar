.class public final Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mSpenLastUsed:Z

.field public final mWMS:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mWMS:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static isNewDexDesktopDisplay(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public final restorePreviousUsedInputMethod()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SemInputMethodManagerServiceUtil"

    if-eqz v0, :cond_3

    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo p0, "restorePreviousUsedInputMethod : failed to return the previous ime becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v5

    const-string/jumbo v6, "restorePreviousUsedInputMethod : restore the previous used ime because dex mode disconnected"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v2

    iget v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string/jumbo p0, "restorePreviousUsedInputMethod : failed to return the previous ime becuase the stored info is null or do not need restore"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
