.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mComponent:Landroid/content/ComponentName;

.field public mProvisioningContext:Ljava/lang/String;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mSetDoOnly:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method

.method public static printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "no %ss\n"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "s"

    :goto_0
    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%d %s%s:\n"

    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p1
.end method

.method public static showHelp(Ljava/io/PrintWriter;)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Prints this help text.\n\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "is-operation-safe"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s <OPERATION_ID>\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Checks if the give operation is safe \n\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "is-operation-safe-by-reason"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s <REASON_ID>\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Checks if the operations are safe for the given reason\n\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set-operation-safe"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s <OPERATION_ID> <REASON_ID>\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "list-owners"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Lists the device / profile owners per user \n\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "list-policy-exempt-apps"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Lists the apps that are exempt from policies\n\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set-active-admin"

    const-string v3, "--user"

    const-string v4, "--provisioning-context"

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "  %s [ %s <USER_ID> | current ] [ %s <PROVISIONING_CONTEXT>] <COMPONENT>\n"

    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Sets the given component as active admin for an existing user.\n\n"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set-device-owner"

    const-string v6, "--device-owner-only"

    filled-new-array {v1, v3, v6, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s ] [ %s <PROVISIONING_CONTEXT>] <COMPONENT>\n"

    invoke-virtual {p0, v6, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Sets the given component as active admin, and its package as device owner.\n\n"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set-profile-owner"

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "remove-active-admin"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "clear-freeze-period-record"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "force-network-logs"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "force-security-logs"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 11

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :sswitch_1
    const-string/jumbo v1, "force-security-logs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "set-profile-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "set-active-admin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "clear-freeze-period-record"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "is-operation-safe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "remove-active-admin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "is-operation-safe-by-reason"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "set-operation-safe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "list-owners"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "set-device-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_b
    const-string/jumbo v1, "list-policy-exempt-apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_c
    const-string/jumbo v1, "force-network-logs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string/jumbo v5, "UNSAFE"

    const-string/jumbo v6, "SAFE"

    const-string/jumbo v7, "We have to wait for %d milliseconds...\n"

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "Success\n"

    packed-switch v1, :pswitch_data_0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "Usage: \n"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_3
    return v3

    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {p1, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :goto_3
    :pswitch_1
    :try_start_3
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    move-result-wide v1

    cmp-long p1, v1, v8

    if-nez p1, :cond_4

    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :cond_4
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    :goto_4
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    move-result-wide v1

    cmp-long p1, v1, v8

    if-nez p1, :cond_5

    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :cond_5
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_4
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "Success: Admin removed %s\n"

    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_5
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_6
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_7
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "Success: Active admin set to component %s\n"

    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_8
    :try_start_a
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    move-result-object p0

    const-string/jumbo p1, "policy exempt app"

    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v4

    :goto_5
    if-ge v1, p1, :cond_7

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  %d: %s\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_9
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_a
    :try_start_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "Next call to check operation %s will return %s\n"

    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_b
    :try_start_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    move-result p0

    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_8

    move-object v5, v6

    :cond_8
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "Operations affected by %s are %s\n"

    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :pswitch_c
    :try_start_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-nez p0, :cond_9

    move p0, v3

    goto :goto_7

    :cond_9
    invoke-interface {p0, p1}, Landroid/app/admin/DevicePolicySafetyChecker;->getUnsafeOperationReason(I)I

    move-result p0

    :goto_7
    if-ne p0, v3, :cond_a

    goto :goto_8

    :cond_a
    move v2, v4

    :goto_8
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_b

    move-object v5, v6

    :cond_b
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "Operation %s is %s. Reason: %s\n"

    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v4

    :goto_9
    if-eqz v0, :cond_c

    :try_start_f
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_a
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bce5670 -> :sswitch_c
        -0x6c7042ec -> :sswitch_b
        -0x6ace5bf9 -> :sswitch_a
        -0x3ffc2fd1 -> :sswitch_9
        -0x35f34b02 -> :sswitch_8
        -0x358ebd5d -> :sswitch_7
        -0x2e4a238f -> :sswitch_6
        -0x226644ca -> :sswitch_5
        -0x1ffc3f59 -> :sswitch_4
        0x20a8d153 -> :sswitch_3
        0x2622c764 -> :sswitch_2
        0x4f01fcba -> :sswitch_1
        0x59fd14e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_0
    const-string v0, "DevicePolicyManager Service (device_policy) commands:\n\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public final parseArgs()V
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    goto :goto_0

    :cond_1
    const-string v1, "--device-owner-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    goto :goto_0

    :cond_2
    const-string v1, "--provisioning-context"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown option: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid component "

    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runListOwners(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string/jumbo v0, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string/jumbo v0, "owner"

    invoke-static {p1, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/OwnerShellData;

    iget v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "User %2d: admin=%s"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    if-eqz v3, :cond_1

    const-string v3, ",DeviceOwner"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    if-eqz v3, :cond_2

    const-string v3, ",ProfileOwner"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, ",ManagedProfileOwner(parentUserId=%d)"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_3
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    if-eqz v2, :cond_4

    const-string v2, ",Affiliated"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final runSetDeviceOwner(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "Can\'t set package "

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s was already an admin for user %d. No need to set it again.\n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    xor-int/2addr v1, v6

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Success: Device owner set to package %s\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Active admin set to component %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as device owner."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    :cond_1
    throw p1
.end method

.method public final runSetProfileOwner(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "Can\'t set component "

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Success: Active admin and profile owner set to %s for user %d\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as profile owner for user "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    throw p1
.end method
