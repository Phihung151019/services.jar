.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/AsyncNotedAppOp;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$0:Landroid/app/AsyncNotedAppOp;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$1:[Z

    iput p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$2:I

    iput-object p4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$4:I

    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$0:Landroid/app/AsyncNotedAppOp;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$1:[Z

    iget v2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$2:I

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$4:I

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->f$5:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    sget-boolean v5, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    aput-boolean v0, v1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not forward noteOp of "

    const-string v1, " to "

    const-string v5, "/"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppOps"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
