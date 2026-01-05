.class public final Lcom/android/server/enterprise/auditlog/AuditLogService$AuditTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$AuditTelephonyCallback;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserMobileDataStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$AuditTelephonyCallback;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataLimited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataEnabled:Z

    invoke-static {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$mlogMobileDataStatus(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataEnabled:Z

    return-void
.end method
