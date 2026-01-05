.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$0:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$1:Z

    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$0:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$1:Z

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Integer;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    move-object v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x32

    if-ne p0, p1, :cond_1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
