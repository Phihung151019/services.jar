.class Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;
.super Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-direct {p0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    return-void
.end method


# virtual methods
.method public final onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method
