.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iput-boolean p1, v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string/jumbo v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    if-nez p1, :cond_0

    const-string/jumbo p1, "extra_brightness_on"

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "extra_brightness_off"

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
