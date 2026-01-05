.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/HorizontalScrollView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;->f$0:Landroid/widget/HorizontalScrollView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;->f$0:Landroid/widget/HorizontalScrollView;

    sget p1, Lcom/android/server/input/debug/FocusEventDebugView;->$r8$clinit:I

    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
