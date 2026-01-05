.class Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isChangeRequestedAsUser(I)I
    .locals 3

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
