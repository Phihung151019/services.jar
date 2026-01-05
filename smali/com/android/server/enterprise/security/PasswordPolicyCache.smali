.class public final Lcom/android/server/enterprise/security/PasswordPolicyCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/enterprise/security/PasswordPolicyCache;


# instance fields
.field public final mChangeRequested:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicyCache;

    invoke-direct {v0}, Lcom/android/server/enterprise/security/PasswordPolicyCache;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->INSTANCE:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final setChangeRequestedAsUser(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
