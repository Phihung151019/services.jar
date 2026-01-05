.class public final synthetic Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Z)I
    .locals 0

    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 p1, p0, 0x1

    sput p1, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    :goto_0
    return p0

    :pswitch_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 p1, p0, 0x1

    sput p1, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
