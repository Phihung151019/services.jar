.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;->f$3:Z

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    sget-object v3, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method
