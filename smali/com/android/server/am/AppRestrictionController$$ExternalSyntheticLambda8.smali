.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 0

    iput p5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v4, 0xff00

    and-int/2addr v4, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 v5, p0, 0xff

    const/16 v6, 0x300

    const/4 v7, 0x6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
