.class public final synthetic Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic f$1:J

.field public final synthetic f$2:[B

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockscreenCredential;

    iput-wide p2, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$2:[B

    iput p5, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v1, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockscreenCredential;

    iget-wide v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$1:J

    iget-object v4, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$2:[B

    iget v5, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$3:I

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
