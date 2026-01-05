.class public final Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDodBannerVisibleAsUser(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result p0

    return p0
.end method
