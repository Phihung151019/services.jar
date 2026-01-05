.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;IIII)V
    .locals 0

    iput p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$3:I

    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;->f$3:I

    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v6, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    if-eqz v7, :cond_0

    if-eqz v1, :cond_1

    iget v6, v6, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    if-ne v1, v6, :cond_0

    :cond_1
    const/16 v6, 0x3e9

    if-eq v2, v6, :cond_2

    invoke-interface {v7, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onEvent(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_2
    invoke-interface {v7, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onTryAgainPressed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    const-string v7, "BiometricSysUiManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifySysUiEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
