.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl;
.super Lcom/samsung/android/isrb/IIsrbManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBootComplete:Z

.field public mContext:Landroid/content/Context;

.field public mErrAlertNum:I

.field public mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

.field public mIsNetworkReady:Z

.field public mIsSystemErrPopup:Z

.field public mLooper:Landroid/os/Looper;

.field public mPreviousTipsDate:I

.field public mPreviousTipsMonth:I

.field public mPreviousTipsTime:I

.field public mPreviousTipsYear:I

.field public mReceiver:Lcom/android/server/isrb/IsrbManagerServiceImpl$1;

.field public mSystemReady:Z


# virtual methods
.method public final isBootCompleteState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    return p0
.end method

.method public final setFakeTime()V
    .locals 2

    const-string v0, "IsrbManagerServiceImpl"

    const-string v1, "Fake time Check in Hooker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setIsrbEnable(Z)V
    .locals 0

    const-string/jumbo p0, "persist.sys.enable_isrb"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showSystemErrDialog()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    const-string/jumbo v2, "sys.isrb.networkcrash"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    iget v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    :cond_0
    const v1, 0x10406f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    if-nez v1, :cond_1

    const v1, 0x10406f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;-><init>(I)V

    const v2, 0x10406f0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v1, 0x10406f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    if-ge v1, v4, :cond_2

    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;-><init>(I)V

    const v2, 0x10406ef

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    const v2, 0x10406f1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;

    invoke-direct {v1, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7d3

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
