.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    invoke-interface {p1, v0, v1, p0}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onRestrictionLevelChanged(ILjava/lang/String;I)V

    return-void
.end method
