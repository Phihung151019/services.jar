.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;
.super Landroid/app/IGrammaticalInflectionManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-direct {p0}, Landroid/app/IGrammaticalInflectionManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    iget-object v0, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-static {v0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "AttributionSource: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have READ_SYSTEM_GRAMMATICAL_GENDER permission."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;

    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    iget-object v2, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    iget-object v1, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;-><init>(Landroid/app/IGrammaticalInflectionManager;Landroid/content/AttributionSource;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    iget-object v0, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-static {v0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V

    return-void
.end method

.method public final setSystemWideGrammaticalGender(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setSystemWideGrammaticalGender(II)V

    return-void
.end method
