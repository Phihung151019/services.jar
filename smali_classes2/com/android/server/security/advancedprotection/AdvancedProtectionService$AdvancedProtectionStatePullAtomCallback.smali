.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 2

    const/16 v0, 0x27fc

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    sget v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->hoursSinceLastChange()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method
