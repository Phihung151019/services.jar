.class public final Lcom/android/server/display/OverlayDisplayWindow;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultDisplay:Landroid/view/Display;

.field public final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field public mDensityDpi:I

.field public final mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mHeight:I

.field public final mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

.field public mLiveScale:F

.field public mLiveTranslationX:F

.field public mLiveTranslationY:F

.field public final mName:Ljava/lang/String;

.field public final mOnGestureListener:Lcom/android/server/display/OverlayDisplayWindow$4;

.field public final mOnScaleGestureListener:Lcom/android/server/display/OverlayDisplayWindow$5;

.field public final mOnTouchListener:Lcom/android/server/display/OverlayDisplayWindow$3;

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public final mSecure:Z

.field public final mSurfaceTextureListener:Lcom/android/server/display/OverlayDisplayWindow$2;

.field public final mTextureView:Landroid/view/TextureView;

.field public mTitle:Ljava/lang/String;

.field public mWidth:I

.field public final mWindowContent:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public mWindowScale:F

.field public mWindowVisible:Z

.field public mWindowX:I

.field public mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "OverlayDisplayWindow"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/OverlayDisplayWindow;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIZZLcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    new-instance v1, Lcom/android/server/display/OverlayDisplayWindow$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayWindow$1;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    new-instance v1, Lcom/android/server/display/OverlayDisplayWindow$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayWindow$2;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSurfaceTextureListener:Lcom/android/server/display/OverlayDisplayWindow$2;

    new-instance v2, Lcom/android/server/display/OverlayDisplayWindow$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/OverlayDisplayWindow$3;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnTouchListener:Lcom/android/server/display/OverlayDisplayWindow$3;

    new-instance v3, Lcom/android/server/display/OverlayDisplayWindow$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/OverlayDisplayWindow$4;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnGestureListener:Lcom/android/server/display/OverlayDisplayWindow$4;

    new-instance v4, Lcom/android/server/display/OverlayDisplayWindow$5;

    invoke-direct {v4, p0}, Lcom/android/server/display/OverlayDisplayWindow$5;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnScaleGestureListener:Lcom/android/server/display/OverlayDisplayWindow$5;

    invoke-static {}, Landroid/view/ThreadedRenderer;->disableVsync()V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    iput-object p9, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    const-string/jumbo p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x1090118

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    const p4, 0x10204b5

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/TextureView;

    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/TextureView;->setPivotX(F)V

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p3, p4}, Landroid/view/TextureView;->setPivotY(F)V

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p3, p2}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p3, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    const p4, 0x10204b6

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/16 p4, 0x7ea

    invoke-direct {p3, p4}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p5, 0x1000328

    or-int/2addr p5, p4

    iput p5, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p7, :cond_0

    const p5, 0x1002328

    or-int/2addr p4, p5

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    if-eqz p8, :cond_1

    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p4, p4, 0x10

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p5, 0x20000000

    or-int/2addr p4, p5

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p4, p4, 0x2

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p4, 0x3f4ccccd    # 0.8f

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/16 p4, 0x33

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p3, Landroid/view/ScaleGestureDetector;

    invoke-direct {p3, p1, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    and-int/lit8 p1, p6, 0x3

    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    const/16 p1, 0x30

    and-int/lit8 p3, p6, 0x30

    if-ne p3, p1, :cond_3

    goto :goto_1

    :cond_3
    iget p2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_1
    iput p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mWindowVisible="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    const-string/jumbo v1, "mWindowX="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    const-string/jumbo v1, "mWindowY="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    const-string/jumbo v1, "mWindowScale="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    const-string/jumbo v1, "mWindowParams="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mTextureView.getScaleX()="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mTextureView.getScaleY()="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleY()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mLiveTranslationX="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    const-string/jumbo v1, "mLiveTranslationY="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    const-string/jumbo v1, "mLiveScale="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final relayout()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final resize(IIIZ)V
    .locals 2

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    iput p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    iput p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    iget p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x10404a8

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10404a7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    :cond_1
    return-void
.end method

.method public final updateDefaultDisplayInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "OverlayDisplayWindow"

    const-string v0, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final updateWindowParams()V
    .locals 8

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    div-float v2, v0, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    add-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr v6, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-boolean v6, Lcom/android/server/display/OverlayDisplayWindow;->DEBUG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateWindowParams: scale="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", offsetScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", x="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    const-string v7, ", width="

    invoke-static {v4, v5, v2, v7, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "OverlayDisplayWindow"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method
