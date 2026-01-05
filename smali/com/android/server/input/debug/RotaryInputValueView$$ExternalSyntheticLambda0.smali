.class public final synthetic Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/RotaryInputValueView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/RotaryInputValueView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/RotaryInputValueView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/RotaryInputValueView;

    const v0, -0xff01

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method
