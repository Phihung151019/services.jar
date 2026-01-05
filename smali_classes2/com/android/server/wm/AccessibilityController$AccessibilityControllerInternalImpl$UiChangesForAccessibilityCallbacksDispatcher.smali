.class public final Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mCallbacks:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;Landroid/os/Looper;Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->mCallbacks:Lcom/android/server/accessibility/magnification/MagnificationController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method
