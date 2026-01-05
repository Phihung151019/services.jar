.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

.field public mHasDelayedNotificationForRecentsToFrontTransition:Z

.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    return-void
.end method
