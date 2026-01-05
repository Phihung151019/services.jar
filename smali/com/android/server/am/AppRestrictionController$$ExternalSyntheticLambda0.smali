.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;

.field public final synthetic f$1:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Lcom/android/server/am/AppRestrictionController$TrackerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppRestrictionController;

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/usage/AppStandbyInternal;

    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$6:I

    iput p8, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$7:I

    iput-object p9, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$8:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/usage/AppStandbyInternal;

    move-object v2, v1

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    move-object v3, v2

    iget v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$3:I

    iget v6, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$4:I

    iget v4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$5:I

    move-object v5, v3

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$6:I

    move v7, v4

    iget v4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$7:I

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$8:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v5, v1, v8, v6, v7}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    return-void
.end method
