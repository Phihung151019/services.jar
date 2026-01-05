.class public final Lcom/android/server/display/OverlayDisplayWindow$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    iget p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    iget p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    sub-float/2addr p1, p4

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    const/4 p0, 0x1

    return p0
.end method
