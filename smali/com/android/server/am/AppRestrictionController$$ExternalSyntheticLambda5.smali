.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$2:I

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method
