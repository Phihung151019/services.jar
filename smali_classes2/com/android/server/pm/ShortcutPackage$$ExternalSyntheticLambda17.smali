.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$0:J

    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$0:J

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$1:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    return-void
.end method
