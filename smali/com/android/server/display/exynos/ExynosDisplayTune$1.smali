.class public final Lcom/android/server/display/exynos/ExynosDisplayTune$1;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/dqe/calib_data.xml"

    invoke-static {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tune"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
