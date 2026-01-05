.class public final synthetic Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string/jumbo v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    const-string p1, "ForegroundServiceMgr"

    const-string/jumbo v0, "exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
