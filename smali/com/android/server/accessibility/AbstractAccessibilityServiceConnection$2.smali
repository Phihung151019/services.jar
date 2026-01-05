.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;
.super Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

.field public final synthetic val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public final synthetic val$interactionId:I

.field public final synthetic val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/window/ScreenCapture$ScreenCaptureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    iput-object p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-direct {p0}, Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 p2, 0x6

    invoke-interface {p1, p2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    new-instance p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {p1, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object p1

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p1, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    invoke-interface {p1, v3, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
