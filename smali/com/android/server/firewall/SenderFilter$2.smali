.class public final Lcom/android/server/firewall/SenderFilter$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/firewall/SenderFilter$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 1

    iget p0, p0, Lcom/android/server/firewall/SenderFilter$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p2, p4

    const/4 p4, 0x0

    const/4 p3, 0x0

    const/4 p6, 0x0

    move p1, p5

    move p5, p7

    invoke-static/range {p1 .. p6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    move p2, p4

    move p0, p5

    move p5, p7

    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p3

    invoke-static {p3, p2, p0}, Lcom/android/server/firewall/SenderFilter;->isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z

    move-result p0

    const/4 p3, 0x1

    if-nez p0, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p2, p5}, Lcom/android/server/pm/Computer;->checkUidSignaturesForAllUsers(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    move p0, p3

    goto :goto_1

    :cond_1
    move p0, p1

    :goto_1
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p3, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    :goto_2
    return p3

    :pswitch_1
    move p2, p4

    move p0, p5

    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lcom/android/server/firewall/SenderFilter;->isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z

    move-result p0

    return p0

    :pswitch_2
    move p2, p4

    move p5, p7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p2, p5}, Lcom/android/server/pm/Computer;->checkUidSignaturesForAllUsers(II)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
