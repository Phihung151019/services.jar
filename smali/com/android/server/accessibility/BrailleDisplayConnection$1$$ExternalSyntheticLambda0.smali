.class public final synthetic Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    check-cast p1, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawUniq(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawBusType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDescSize(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDesc(II)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
