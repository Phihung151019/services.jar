.class public final synthetic Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    iput p2, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    iget v2, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-object v3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    new-instance v13, Landroid/os/RemoteCallback;

    new-instance p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;)V

    invoke-direct {v13, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    const-wide v10, 0x7fffffffffffffffL

    const/16 v12, 0x1f

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    sget v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    const-string v0, "ForegroundServiceMgr"

    const-string/jumbo v1, "exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
