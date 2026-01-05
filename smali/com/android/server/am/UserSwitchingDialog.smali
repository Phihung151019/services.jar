.class public final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/Dialog;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDisableAnimations:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mTraceCookie:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const v0, 0x103022f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const-string/jumbo p4, "debug.usercontroller.disable_user_switching_dialog_animations"

    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    mul-int/lit16 v1, v1, 0x53e1

    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x1090207

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x102000b

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x104046d

    goto :goto_0

    :cond_0
    const p1, 0x104046e

    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    if-nez p5, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x1040de2

    invoke-virtual {v2, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    const-string p1, " "

    invoke-static {p5, p1, p6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p5, p6}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const p1, 0x1020006

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    iget-object p5, p3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p5

    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-static {p6, p3, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p6, p3}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p5, p3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p5, p6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float p5, p5

    int-to-float p6, p6

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p5, v4

    div-float/2addr p6, v4

    invoke-virtual {p3, v3, p5, p6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    const p1, 0x10204f9

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    if-eqz p4, :cond_7

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p5, 0x1120025

    invoke-virtual {p4, p5, p3, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x110

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p2, 0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 p1, 0x7da

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method


# virtual methods
.method public final asyncTraceBegin(ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "asyncTraceBegin-"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UserSwitchingDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p1

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p2, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public final asyncTraceEnd(ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "UserSwitchingDialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo p0, "asyncTraceEnd-"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dismiss()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string/jumbo v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    return-void
.end method

.method public final dismiss(Ljava/lang/Runnable;)V
    .locals 3

    const-string/jumbo v0, "UserSwitchingDialog"

    const-string/jumbo v1, "dismiss called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->run()V

    return-void

    :cond_1
    const-string/jumbo p1, "dismissAnimation"

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;)V

    const-string/jumbo v0, "dismiss"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 2

    const-string/jumbo v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final show(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V
    .locals 3

    const-string/jumbo v0, "UserSwitchingDialog"

    const-string/jumbo v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->show()V

    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    iget-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;->run()V

    return-void

    :cond_0
    const-string/jumbo p1, "showAnimation"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;I)V

    const-string/jumbo v0, "show"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 5

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1, p3}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    const/16 p1, 0xa0

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, p3, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Lcom/android/server/am/UserSwitchingDialog$2;

    invoke-direct {p0, v2}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
