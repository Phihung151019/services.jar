.class public final Lcom/android/server/display/WifiDisplayAdapter$8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$interval:I

.field public final synthetic val$scanChannel:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$scanChannel:I

    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$interval:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$scanChannel:I

    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$interval:I

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "requestStartScan setChannel = "

    const-string v3, ", interval = "

    const-string/jumbo v4, "WifiDisplayController"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    const/16 v1, 0x3e8

    if-gtz p0, :cond_0

    iput v1, v0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    goto :goto_0

    :cond_0
    mul-int/2addr p0, v1

    iput p0, v0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    :goto_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/server/display/WifiDisplayController;->mIsScanStoppedByP2p:Z

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->enableP2p()V

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_1
    return-void
.end method
