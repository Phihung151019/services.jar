.class public final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CAPABILITIES:[Ljava/lang/String;

.field public static final LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public mActivityType:I

.field public mAgent:Ljava/lang/String;

.field public mAsync:Z

.field public mAttachAgentDuringBind:Z

.field public mAutoStop:Z

.field public mBroadcastOptions:Landroid/app/BroadcastOptions;

.field public mClockType:I

.field public mDismissKeyguardIfInsecure:Z

.field public mDisplayId:I

.field public final mDumping:Z

.field public mForceLaunchTaskOnHome:Z

.field public mForceWindowingMode:I

.field public final mInterface:Lcom/android/server/am/ActivityManagerService;

.field public final mInternal:Lcom/android/server/am/ActivityManagerService;

.field public mIsLockTask:Z

.field public mIsResumeAffordanceRequested:Z

.field public mIsTaskOverlay:Z

.field public mLaunchBounds:Landroid/graphics/Rect;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public mProfileFile:Ljava/lang/String;

.field public mProfilerOutputVersion:I

.field public mReceiverPermission:Ljava/lang/String;

.field public mRepeat:I

.field public mSamplingInterval:I

.field public mShowSplashScreen:Z

.field public mStartFlags:I

.field public mStopOption:Z

.field public mStreaming:Z

.field public mTaskDisplayAreaFeatureId:I

.field public mTaskId:I

.field public final mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mUserId:I

.field public mWaitOption:Z

.field public mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "yyyyMMdd-HHmmss"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "start.suspend"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    return-void
.end method

.method public static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 4

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p4

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p2

    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, p3, :cond_1

    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void

    :cond_1
    invoke-interface {p0, p1, p2, p2, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/16 p3, 0x1f03

    invoke-static {p3}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    move-object v3, p5

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p3, p3, p5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;Z)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "Activity manager dump options:"

    const-string v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    const-string v1, "  WHAT may be one of:"

    const-string v2, "    a[ctivities]: activity stack state"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    r[recents]: recent activities state"

    const-string v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    const-string v1, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    const-string v2, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    p[rocesses] [PACKAGE_NAME]: process state"

    const-string v0, "    o[om]: out of memory management"

    const-string v1, "    perm[issions]: URI permission grant state"

    const-string v2, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    provider [COMP_SPEC]: provider client-side state"

    const-string v0, "    s[ervices] [COMP_SPEC ...]: service state"

    const-string v1, "    allowed-associations: current package association restrictions"

    const-string v2, "    as[sociations]: tracked app associations"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    start-info [PACKAGE_NAME]: historical process start information"

    const-string v0, "    exit-info [PACKAGE_NAME]: historical process exit information"

    const-string v1, "    lmk: stats on low memory killer"

    const-string v2, "    lru: raw LRU process list"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    binder-proxies: stats on binder objects and IPCs"

    const-string v0, "    settings: currently applied config settings"

    const-string v1, "    cao: cached app optimizer state"

    const-string v2, "    timers: the current ANR timer state"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    service [COMP_SPEC]: service client-side state"

    const-string v0, "    package [PACKAGE_NAME]: all state related to given package"

    const-string v1, "    all: dump all activities"

    const-string v2, "    top: dump the top activity"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    users: user state"

    const-string v0, "  WHAT may also be a COMP_SPEC to dump activities."

    const-string v1, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    const-string v2, "    a partial substring in a component name, a"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    hex object identifier."

    const-string v0, "  -a: include all available server state."

    const-string v1, "  -c: include client state."

    const-string v2, "  -p: limit output to given package."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  -d: limit output to given display."

    const-string v0, "  --checkin: output checkin format, resetting data."

    const-string v1, "  --C: output checkin format, not resetting data."

    const-string v2, "  --proto: output dump in protocol buffer format."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "--dump-dumpable"

    const-string v0, "--list-dumpables"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "  %s: dump just the DUMPABLE-related state of an activity. Use the %s option to list the supported DUMPABLEs\n"

    invoke-virtual {p0, v1, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p1, "  %s: show the available dumpables in an activity\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    const-string p1, "Activity manager (activity) commands:"

    const-string v0, "  help"

    const-string v1, "      Print this help text."

    const-string v2, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          [--sampling INTERVAL] [--clock-type <TYPE>] [--streaming]"

    const-string v0, "          [--profiler-output-version NUMBER]"

    const-string v1, "          [-R COUNT] [-S] [--track-allocation]"

    const-string v2, "          [--user <USER_ID> | current] [--suspend] <INTENT>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Start an Activity.  Options are:"

    const-string v0, "      -D: enable debugging"

    const-string v1, "      --suspend: debugged app suspend threads at startup (only with -D)"

    const-string v2, "      -N: enable native debugging"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -W: wait for launch to complete (initial display)"

    const-string v0, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    const-string v1, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    const-string v2, "          between samples (use with --start-profiler)"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --clock-type <TYPE>: type can be wall / thread-cpu / dual. Specify"

    const-string v0, "          the clock that is used to report the timestamps when profiling"

    const-string v2, "          The default value is dual. (use with --start-profiler)"

    const-string v3, "      --streaming: stream the profiling output to the specified file"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          (use with --start-profiler)"

    const-string v0, "      --profiler-output-version Specify the version of the"

    const-string v2, "          profiling output (use with --start-profiler)"

    const-string v3, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --attach-agent <agent>: attach the given agent before binding"

    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    const-string v2, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    const-string v3, "          the top activity will be finished."

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -S: force stop the target app before starting the activity"

    const-string v0, "      --track-allocation: enable tracking of object allocations"

    const-string v2, "      --user <USER_ID> | current: Specify which user to run as; if not"

    const-string v3, "          specified then run as the current user."

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    const-string v0, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    const-string v4, "      --display <DISPLAY_ID>: The display to launch the activity into."

    const-string v5, "      --splashscreen-icon: Show the splash screen icon on launch."

    invoke-static {p0, p1, v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  start-in-vsync"

    const-string v0, "      Start an Activity with vsync aligned. See `start-activity` for the"

    const-string v4, "      possible options."

    const-string v5, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-static {p0, p1, v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Start a Service.  Options are:"

    const-string v0, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Start a foreground Service.  Options are:"

    const-string v0, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Stop a Service.  Options are:"

    const-string v0, "  broadcast [--user <USER_ID> | all | current]"

    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          [--receiver-permission <PERMISSION>]"

    const-string v0, "          [--allow-background-activity-starts]"

    const-string v2, "          [--async] <INTENT>"

    const-string v3, "      Send a broadcast Intent.  Options are:"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    const-string v0, "          specified then send to all users."

    const-string v2, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    const-string v3, "      --allow-background-activity-starts: The receiver may start activities"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          even if in the background."

    const-string v0, "      --async: Send without waiting for the completion of the receiver."

    const-string v2, "  compact {some|full} <PROCESS>"

    const-string v3, "      Perform a single process compaction. The given <PROCESS> argument"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          may be either a process name or pid."

    const-string v0, "      some: execute file compaction."

    const-string v2, "      full: execute anon + file compaction."

    const-string v3, "  compact system"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Perform a full system compaction."

    const-string v3, "  compact native {some|full} <pid>"

    const-string v4, "      Perform a native compaction for process with <pid>."

    invoke-static {p0, p1, v3, v4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  freeze [--sticky] <PROCESS>"

    const-string v0, "      Freeze a process. The given <PROCESS> argument"

    const-string v3, "          may be either a process name or pid.  Options are:"

    invoke-static {p0, v2, p1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --sticky: persists the frozen state for the process lifetime or"

    const-string v0, "                  until an unfreeze is triggered via shell"

    const-string v2, "  unfreeze [--sticky] <PROCESS>"

    const-string v4, "      Unfreeze a process. The given <PROCESS> argument"

    invoke-static {p0, p1, v0, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --sticky: persists the unfrozen state for the process lifetime or"

    const-string v0, "                  until a freeze is triggered via shell"

    const-string v2, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-static {p0, v3, p1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          [--user <USER_ID> | current]"

    const-string v0, "          [--no-hidden-api-checks [--no-test-api-access]]"

    const-string v2, "          [--no-isolated-storage]"

    const-string v3, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    const-string v2, "      is only one instrumentation.  Options are:"

    const-string v3, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          [-e perf true] to generate raw output for performance measurements."

    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    const-string v2, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    const-string v3, "      -p <FILE>: write profiling data to <FILE>"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -m: Write output as protobuf to stdout (machine readable)"

    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    const-string v2, "          readable). If path is not specified, default directory and file name will"

    const-string v3, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -w: wait for instrumentation to finish before returning.  Required for"

    const-string v0, "          test runners."

    const-string v2, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    const-string v3, "          current user if not specified."

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    const-string v0, "      --no-test-api-access: do not allow access to test APIs, if hidden"

    const-string v2, "          API checks are enabled."

    const-string v3, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          mount full external storage"

    const-string v0, "      --no-window-animation: turn off window animations while running."

    const-string v2, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    const-string v3, "          This assumes that the process supports the selected ABI."

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    const-string v0, "      Trace IPC transactions."

    const-string v2, "      start: start tracing IPC transactions."

    const-string v3, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    const-string p1, "  profile start [--user <USER_ID> current]"

    const-string v0, "          [--clock-type <TYPE>]"

    const-string v2, "          [--profiler-output-version VERSION]"

    const-string v3, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Start profiler on a process.  The given <PROCESS> argument"

    const-string v0, "        may be either a process name or pid.  Options are:"

    const-string v2, "      --user <USER_ID> | current: When supplying a process name,"

    const-string v3, "          specify user of process to profile; uses current user if not"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          specified."

    const-string v4, "      --clock-type <TYPE>: use the specified clock to report timestamps."

    const-string v5, "          The type can be one of wall | thread-cpu | dual. The default"

    const-string v6, "          value is dual."

    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "      --profiler-output-versionVERSION: specifies the output"

    const-string v5, "          format version"

    const-string v6, "          between samples."

    invoke-static {p0, v4, v5, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "      --streaming: stream the profiling output to the specified file."

    const-string v4, "  profile stop [--user <USER_ID> current] <PROCESS>"

    const-string v5, "      Stop profiler on a process.  The given <PROCESS> argument"

    invoke-static {p0, v1, v4, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  dumpheap [--user <USER_ID> current] [-n] [-g] [-b <format>] "

    invoke-static {p0, v2, v3, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "           <PROCESS> <FILE>"

    const-string v0, "      Dump the heap of a process.  The given <PROCESS> argument may"

    const-string v1, "        be either a process name or pid.  Options are:"

    const-string v3, "      -n: dump native heap instead of managed heap"

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -g: force GC before dumping the heap"

    const-string v0, "      -b <format>: dump contents of bitmaps in the format specified,"

    const-string v1, "         which can be \"png\", \"jpg\" or \"webp\"."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          specify user of process to dump; uses current user if not specified."

    const-string v0, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    const-string v1, "      Set application <PACKAGE> to debug.  Options are:"

    const-string v2, "      -w: wait for debugger when application starts"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --persistent: retain this value"

    const-string v0, "  clear-debug-app"

    const-string v1, "      Clear the previously set-debug-app."

    const-string v2, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Start monitoring pss size of <PROCESS>, if it is at or"

    const-string v0, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    const-string v1, "  clear-watch-heap"

    const-string v2, "      Clear the previously set-watch-heap."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  clear-start-info [--user <USER_ID> | all | current] <PACKAGE>"

    const-string v0, "      Clear process start-info for the given package."

    const-string v1, "      Clear start-info for all packages if no package is provided."

    const-string v2, "  start-info-detailed-monitoring [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Enable application start info detailed monitoring for the given package."

    const-string v0, "      Disable if no package is supplied."

    const-string v1, "  clear-exit-info [--user <USER_ID> | all | current] <PACKAGE>"

    const-string v2, "      Clear process exit-info for the given package."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Clear exit-info for all packages if no package is provided."

    const-string v0, "  bug-report [--progress | --telephony]"

    const-string v1, "      Request bug report generation; will launch a notification"

    const-string v2, "        when done to select where it should be delivered. Options are:"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "     --progress: will launch a notification right away to show its progress."

    const-string v0, "     --telephony: will dump only telephony sections."

    const-string v1, "  fgs-notification-rate-limit {enable | disable}"

    const-string v2, "     Enable/disable rate limit on FGS notification deferral policy."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    const-string v0, "      Completely stop the given application package."

    const-string v1, "  stop-app [--user <USER_ID> | all | current] <PACKAGE>"

    const-string v2, "      Stop an app and all of its services.  Unlike `force-stop` this does"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      not cancel the app\'s scheduled alarms and jobs."

    const-string v0, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    const-string v1, "      Induce a VM crash in the specified package or process"

    const-string v2, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Kill all background processes associated with the given application."

    const-string v0, "  kill-all"

    const-string v1, "      Kill all processes that are safe to kill (cached, etc)."

    const-string v2, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      If the given application\'s uid is in the background and waiting to"

    const-string v0, "      become idle (not allowing background services), do that now."

    const-string v1, "  set-deterministic-uid-idle [--user <USER_ID> | all | current] <true|false>"

    const-string v2, "      If true, sets the timing of making UIDs idle consistent and"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      deterministic. If false, the timing will be variable depending on"

    const-string v0, "      other activity on the device. The default is false."

    const-string v1, "  monitor [--gdb <port>] [-p <TARGET>] [-s] [-c] [-k]"

    const-string v2, "      Start monitoring for crashes or ANRs."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --gdb: start gdbserv on the given port at crash/ANR"

    const-string v0, "      -p: only show events related to a specific process / package"

    const-string v1, "      -s: simple mode, only show a summary line for each event"

    const-string v2, "      -c: assume the input is always [c]ontinue"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -k: assume the input is always [k]ill"

    const-string v0, "         -c and -k are mutually exclusive."

    const-string v1, "  watch-uids [--oom <uid>] [--mask <capabilities integer>]"

    const-string v2, "      Start watching for and reporting uid state changes."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --oom: specify a uid for which to report detailed change messages."

    const-string v0, "      --mask: Specify PROCESS_CAPABILITY_XXX mask to report. "

    const-string v1, "              By default, it only reports FOREGROUND_LOCATION (1)"

    const-string v2, "              FOREGROUND_CAMERA (2), FOREGROUND_MICROPHONE (4)"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "              and NETWORK (8). New capabilities added on or after"

    const-string v0, "              Android UDC will not be reported by default."

    const-string v1, "  hang [--allow-restart]"

    const-string v2, "      Hang the system."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --allow-restart: allow watchdog to perform normal system restart"

    const-string v0, "  restart"

    const-string v1, "      Restart the user-space system."

    const-string v2, "  idle-maintenance"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Perform idle maintenance now."

    const-string v0, "  screen-compat [on|off] <PACKAGE>"

    const-string v1, "      Control screen compatibility mode of <PACKAGE>."

    const-string v2, "  package-importance <PACKAGE>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Print current importance of <PACKAGE>."

    const-string v0, "  to-uri [INTENT]"

    const-string v1, "      Print the given Intent specification as a URI."

    const-string v2, "  to-intent-uri [INTENT]"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Print the given Intent specification as an intent: URI."

    const-string v0, "  to-app-uri [INTENT]"

    const-string v1, "      Print the given Intent specification as an android-app: URI."

    const-string v2, "  switch-user <USER_ID>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Switch to put USER_ID in the foreground, starting"

    const-string v0, "      execution of that user if it is currently stopped."

    const-string v1, "  get-current-user"

    const-string v2, "      Returns id of the current foreground user."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  start-user [-w] [--display DISPLAY_ID] <USER_ID>"

    const-string v0, "      Start USER_ID in background if it is currently stopped;"

    const-string v1, "      use switch-user if you want to start the user in foreground."

    const-string v2, "      -w: wait for start-user to complete and the user to be unlocked."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --display <DISPLAY_ID>: starts the user visible in that display, which allows the user to launch activities on it."

    const-string v0, "        (not supported on all devices; typically only on automotive builds where the vehicle has passenger displays)"

    const-string v1, "  unlock-user <USER_ID>"

    const-string v2, "      Unlock the given user.  This will only work if the user doesn\'t"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      have an LSKF (PIN/pattern/password)."

    const-string v0, "  stop-user [-w] [-f] <USER_ID>"

    const-string v1, "      Stop execution of USER_ID, not allowing it to run any"

    const-string v2, "      code until a later explicit start or switch to it."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      -w: wait for stop-user to complete."

    const-string v0, "      -f: force stop, even if user has an unstoppable parent."

    const-string v1, "  is-user-stopped <USER_ID>"

    const-string v2, "      Returns whether <USER_ID> has been stopped or not."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  get-started-user-state <USER_ID>"

    const-string v0, "      Gets the current state of the given started user."

    const-string v1, "  track-associations"

    const-string v2, "      Enable association tracking."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  untrack-associations"

    const-string v0, "      Disable and clear association tracking."

    const-string v1, "  get-uid-state <UID>"

    const-string v2, "      Gets the process state of an app given its <UID>."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  attach-agent <PROCESS> <FILE>"

    const-string v0, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    const-string v1, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    const-string v2, "      Retrieve the configuration and any recent configurations of the device."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      --days: also return last N days of configurations that have been seen."

    const-string v0, "      --device: also output global device configuration info."

    const-string v1, "      --proto: return result as a proto; does not include --days info."

    const-string v2, "      --display: Specify for which display to run the command; if not "

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          specified then run for the default display."

    const-string v0, "  supports-multiwindow"

    const-string v1, "      Returns true if the device supports multiwindow."

    const-string v2, "  supports-split-screen-multi-window"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Returns true if the device supports split screen multiwindow."

    const-string v0, "  suppress-resize-config-changes <true|false>"

    const-string v1, "      Suppresses configuration changes due to user resizing an activity/task."

    const-string v2, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Sets the inactive state of an app."

    const-string v0, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    const-string v1, "      Returns the inactive state of an app."

    const-string v2, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare|restricted"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "      Puts an app in the standby bucket."

    const-string v0, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    const-string v1, "      Returns the standby bucket of an app."

    const-string v2, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    const-string v0, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    const-string v1, "  display [COMMAND] [...]: sub-commands for operating on displays."

    const-string v2, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    const-string v0, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    const-string v1, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    const-string v2, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "           bottom (false) of <STACK_ID>."

    const-string v0, "       list"

    const-string v1, "           List all of the activity stacks and their sizes."

    const-string v2, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    const-string v0, "       remove <STACK_ID>"

    const-string v1, "           Remove stack <STACK_ID>."

    const-string v2, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "       lock <TASK_ID>"

    const-string v0, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    const-string v1, "       lock stop"

    const-string v2, "           End the current task lock."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "       resizeable <TASK_ID> [0|1|2|3]"

    const-string v0, "           Change resizeable mode of <TASK_ID> to one of the following:"

    const-string v1, "           0: unresizeable"

    const-string v2, "           1: crop_windows"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "           2: resizeable"

    const-string v0, "           3: resizeable_and_pipable"

    const-string v1, "       resize <TASK_ID> <LEFT> <TOP> <RIGHT> <BOTTOM>"

    const-string v2, "           The task is resized only if it is in multi-window windowing"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "           mode or freeform windowing mode."

    const-string v0, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    const-string v1, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    const-string v2, "      without restarting any processes."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  write"

    const-string v0, "      Write all pending state to storage."

    const-string v1, "  compat [COMMAND] [...]: sub-commands for toggling app-compat changes."

    const-string v2, "         enable|disable [--no-kill] <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "            Toggles a change either by id or by name for <PACKAGE_NAME>."

    const-string v0, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect) unless --no-kill is provided."

    const-string v1, "         reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-static {p0, p1, v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect)."

    const-string v1, "         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME>"

    const-string v2, "            Toggles all changes that are gated by <targetSdkVersion>."

    const-string v3, "         reset-all [--no-kill] <PACKAGE_NAME>"

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "            Removes all existing overrides for all changes for "

    const-string v1, "            <PACKAGE_NAME> (back to default behaviour)."

    const-string v2, "  memory-factor [command] [...]: sub-commands for overriding memory pressure factor"

    invoke-static {p0, p1, v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "         set <NORMAL|MODERATE|LOW|CRITICAL>"

    const-string v0, "            Overrides memory pressure factor. May also supply a raw int level"

    const-string v1, "         show"

    const-string v2, "            Shows the existing memory pressure factor"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "         reset"

    const-string v0, "            Removes existing override for memory pressure factor"

    const-string v1, "  service-restart-backoff <COMMAND> [...]: sub-commands to toggle service restart backoff policy."

    const-string v2, "         enable|disable <PACKAGE_NAME>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "            Toggles the restart backoff policy on/off for <PACKAGE_NAME>."

    const-string v0, "         show <PACKAGE_NAME>"

    const-string v1, "            Shows the restart backoff policy state for <PACKAGE_NAME>."

    const-string v2, "  get-isolated-pids <UID>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "         Get the PIDs of isolated processes with packages in this <UID>"

    const-string v0, "  set-stop-user-on-switch [true|false]"

    const-string v1, "         Sets whether the current user (and its profiles) should be stopped when switching to a different user."

    const-string v2, "         Without arguments, it resets to the value defined by platform."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  set-bg-abusive-uids [uid=percentage][,uid=percentage...]"

    const-string v0, "         Force setting the battery usage of the given UID."

    const-string v1, "  set-bg-restriction-level [--user <USER_ID>] <PACKAGE> unrestricted|exempted|adaptive_bucket|restricted_bucket|background_restricted|hibernation"

    const-string v2, "         Set an app\'s background restriction level which in turn map to a app standby bucket."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  get-bg-restriction-level [--user <USER_ID>] <PACKAGE>"

    const-string v0, "         Get an app\'s background restriction level."

    const-string v1, "  list-displays-for-starting-users"

    const-string v2, "         Lists the id of displays that can be used to start users on background."

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  set-foreground-service-delegate [--user <USER_ID>] <PACKAGE> start|stop"

    const-string v0, "         Start/stop an app\'s foreground service delegate."

    const-string v1, "  set-ignore-delivery-group-policy <ACTION>"

    const-string v2, "         Start ignoring delivery group policy set for a broadcast action"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "  clear-ignore-delivery-group-policy <ACTION>"

    const-string v0, "         Stop ignoring delivery group policy set for a broadcast action"

    const-string v1, "  capabilities [--protobuf]"

    const-string v2, "         Output am supported features (text format). Options are:"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "         --protobuf: format output using protobuffer"

    const-string v0, "  set-app-zygote-preload-timeout <TIMEOUT_IN_MS>"

    const-string v1, "         Set the timeout for preloading code in the app-zygote"

    const-string v2, "  set-media-foreground-service inactive|active [--user USER_ID] <PACKAGE> <NOTIFICATION_ID>"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "         Set an app\'s media service inactive or active."

    const-string v0, "  clear-bad-process [--user USER_ID] <PROCESS_NAME>"

    const-string v1, "         Clears a process from the bad processes list."

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {p0, p1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static runTraceTimer()V
    .locals 1

    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    return-void
.end method


# virtual methods
.method public final bucketNameToBucketValue(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    const-string/jumbo v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x1e

    return p0

    :cond_2
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x28

    return p0

    :cond_3
    const-string/jumbo v1, "re"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p0, 0x2d

    return p0

    :cond_4
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0x32

    return p0

    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown bucket: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final getProcessFromShell()Lcom/android/server/am/ProcessRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v2, v1

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-object v2, v1

    :catch_1
    :goto_1
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: more than one processes found"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v1

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    :try_start_5
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_4

    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: could not find process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v1

    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_3
    :goto_4
    return-object v2
.end method

.method public final getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Error: Activity manager has no configuration"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v0, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public final getUidState(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/app/ActivityManager;

    const-string/jumbo v1, "PROCESS_STATE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final makeIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mLaunchBounds:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :sswitch_1
    const-string/jumbo v2, "clear-recent-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v2, "set-stop-user-on-switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x56

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v2, "stop-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v2, "set-media-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x61

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v2, "refresh-settings-cache"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x52

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v2, "wait-for-broadcast-dispatch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4e

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v2, "set-ignore-delivery-group-policy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4f

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x46

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v2, "compact"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v2, "clear-ignore-delivery-group-policy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x50

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v2, "set-bg-abusive-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x57

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x47

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v2, "start-in-vsync"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v2, "wait-for-application-barrier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4d

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v2, "memory-factor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x53

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_2e
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v2, "get-bg-restriction-level"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5a

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_34
    const-string/jumbo v2, "clear-exit-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_35
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_36
    const-string/jumbo v2, "list-bg-exemptions-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto/16 :goto_1

    :sswitch_37
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_38
    const-string/jumbo v2, "service-restart-backoff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x54

    goto/16 :goto_1

    :sswitch_39
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_3a
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_3b
    const-string/jumbo v2, "unfreeze"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_3c
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_3d
    const-string/jumbo v2, "fgs-notification-rate-limit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_3e
    const-string/jumbo v2, "observe-foreground-process"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    goto/16 :goto_1

    :sswitch_3f
    const-string/jumbo v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_40
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_41
    const-string/jumbo v2, "clear-start-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_42
    const-string/jumbo v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_43
    const-string/jumbo v2, "set-app-zygote-preload-timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x60

    goto/16 :goto_1

    :sswitch_44
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_45
    const-string/jumbo v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_46
    const-string/jumbo v2, "trace-timer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_47
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_48
    const-string/jumbo v2, "set-bg-restriction-level"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x59

    goto/16 :goto_1

    :sswitch_49
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_4a
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_4b
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_4c
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_4d
    const-string/jumbo v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_4e
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_4f
    const-string/jumbo v2, "set-foreground-service-delegate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5e

    goto/16 :goto_1

    :sswitch_50
    const-string/jumbo v2, "freeze"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_51
    const-string/jumbo v2, "wait-for-broadcast-barrier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4c

    goto/16 :goto_1

    :sswitch_52
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_53
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_54
    const-string/jumbo v2, "compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x51

    goto/16 :goto_1

    :sswitch_55
    const-string/jumbo v2, "reset-dropbox-rate-limiter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5c

    goto/16 :goto_1

    :sswitch_56
    const-string/jumbo v2, "capabilities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5f

    goto/16 :goto_1

    :sswitch_57
    const-string/jumbo v2, "start-info-detailed-monitoring"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_58
    const-string/jumbo v2, "list-displays-for-starting-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5d

    goto/16 :goto_1

    :sswitch_59
    const-string/jumbo v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_5a
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x33

    goto :goto_1

    :sswitch_5b
    const-string/jumbo v2, "clear-bad-process"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x62

    goto :goto_1

    :sswitch_5c
    const-string/jumbo v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :sswitch_5d
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_5e
    const-string/jumbo v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e

    goto :goto_1

    :sswitch_5f
    const-string/jumbo v2, "get-isolated-pids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x55

    goto :goto_1

    :sswitch_60
    const-string/jumbo v2, "set-deterministic-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x26

    goto :goto_1

    :sswitch_61
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto :goto_1

    :sswitch_62
    const-string/jumbo v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearBadProcess(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    const-string/jumbo v3, "runSetMediaForegroundService()"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: flag com.android.media.flags.enable_notifying_activity_manager_with_media_session_status_change not enabled"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/os/ZygoteProcess;->setAppZygotePreloadTimeout(I)V

    return v6

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCapabilities(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetForegroundServiceDelegate(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p1, p0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_2
    const-string/jumbo p0, "none"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter;->reset()V

    invoke-static {}, Lcom/android/server/BootReceiver;->resetDropboxRateLimiter()V

    return v6

    :pswitch_7
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentForegroundProcess(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)V

    return v6

    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetBgRestrictionLevel(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgRestrictionLevel(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    move v2, v6

    :goto_4
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_5
    return v6

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgAbusiveUids()I

    move-result p0

    return p0

    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStopUserOnSwitch(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetIsolatedProcesses(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runServiceRestartBackoff(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {p0, v5}, Lcom/android/server/am/CoreSettingsObserver;->onChange(Z)V

    return v6

    :pswitch_11
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "android.permission.DUMP"

    const-string/jumbo v3, "waitForBroadcastBarrier()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return v6

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :pswitch_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "android.permission.DUMP"

    const-string/jumbo v3, "waitForBroadcastBarrier()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return v6

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :pswitch_14
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastDispatch(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_15
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v2, Landroid/util/TeeWriter;

    new-array v3, v4, [Ljava/io/Writer;

    sget-object v4, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {p1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForApplicationBarrier(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastBarrier(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_17
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_18
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const p1, 0x111020a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v6

    :pswitch_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    const-string/jumbo p0, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_1a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v6

    :pswitch_1b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v6

    :pswitch_1c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_1d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_1e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_1f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay()I

    move-result p0

    return p0

    :pswitch_21
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory()I

    move-result p0

    return p0

    :pswitch_22
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_23
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket()I

    move-result p0

    return p0

    :pswitch_24
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_25
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive()I

    move-result p0

    return p0

    :pswitch_26
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges()V

    return v6

    :pswitch_27
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_28
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_29
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_2a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_2b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_2c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser()I

    move-result p0

    return p0

    :pswitch_2e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_2f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_30
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_31
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_32
    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(ILjava/io/PrintWriter;)V

    return v6

    :pswitch_33
    invoke-virtual {p0, v5, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(ILjava/io/PrintWriter;)V

    return v6

    :pswitch_34
    invoke-virtual {p0, v6, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(ILjava/io/PrintWriter;)V

    return v6

    :pswitch_35
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_36
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat()I

    move-result p0

    return p0

    :pswitch_37
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_38
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_39
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_3a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_3b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDeterministicUidIdle()I

    move-result p0

    return p0

    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle()I

    move-result p0

    return p0

    :pswitch_3e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    return v6

    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill()I

    move-result p0

    return p0

    :pswitch_40
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash()I

    move-result p0

    return p0

    :pswitch_41
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runFgsNotificationRateLimit()V

    return v6

    :pswitch_42
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearRecentApps()V

    return v6

    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopApp()I

    move-result p0

    return p0

    :pswitch_44
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop()I

    move-result p0

    return p0

    :pswitch_45
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_46
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearExitInfo()I

    move-result p0

    return p0

    :pswitch_47
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartInfoDetailedMonitoring(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_48
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearStartInfo()I

    move-result p0

    return p0

    :pswitch_49
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap()V

    return v6

    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap()V

    return v6

    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp()V

    return v6

    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp()V

    return v6

    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp()I

    move-result p0

    return p0

    :pswitch_4e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile()I

    move-result p0

    return p0

    :pswitch_50
    invoke-static {}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceTimer()V

    return v1

    :pswitch_51
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_53
    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->runFreeze(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    :pswitch_54
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runFreeze(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    :pswitch_55
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompact(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_56
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)V

    return v6

    :pswitch_57
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_58
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    :pswitch_59
    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    :pswitch_5a
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {p1, v6}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :catch_1
    :try_start_6
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "Thread interrupted unexpectedly."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_5b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivityForCarlife(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->onHelp()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    return v6

    :goto_7
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e761220 -> :sswitch_62
        -0x7566d004 -> :sswitch_61
        -0x6f2553a9 -> :sswitch_60
        -0x6ee359bb -> :sswitch_5f
        -0x6684cefe -> :sswitch_5e
        -0x65f435a5 -> :sswitch_5d
        -0x6366a39f -> :sswitch_5c
        -0x615a9ad9 -> :sswitch_5b
        -0x608449aa -> :sswitch_5a
        -0x607e173f -> :sswitch_59
        -0x5a4c3594 -> :sswitch_58
        -0x595e0b0f -> :sswitch_57
        -0x58aaf04a -> :sswitch_56
        -0x57a97ed6 -> :sswitch_55
        -0x50c0cc7e -> :sswitch_54
        -0x4ef4b7a7 -> :sswitch_53
        -0x4db101b9 -> :sswitch_52
        -0x4c012bb1 -> :sswitch_51
        -0x4b7bc569 -> :sswitch_50
        -0x46763e04 -> :sswitch_4f
        -0x436e13b6 -> :sswitch_4e
        -0x3bc220e3 -> :sswitch_4d
        -0x3988e78d -> :sswitch_4c
        -0x376fe74e -> :sswitch_4b
        -0x3619e74c -> :sswitch_4a
        -0x3530e48a -> :sswitch_49
        -0x345cc4ba -> :sswitch_48
        -0x33db6ce6 -> :sswitch_47
        -0x3374bb43 -> :sswitch_46
        -0x30697b4a -> :sswitch_45
        -0x2c900a2b -> :sswitch_44
        -0x29e7a7a1 -> :sswitch_43
        -0x29b36e67 -> :sswitch_42
        -0x271b1d47 -> :sswitch_41
        -0x2420b54e -> :sswitch_40
        -0x20b34e72 -> :sswitch_3f
        -0x204d57ca -> :sswitch_3e
        -0x1a75f64b -> :sswitch_3d
        -0x171366ac -> :sswitch_3c
        -0x16a4cd90 -> :sswitch_3b
        -0x152733fd -> :sswitch_3a
        -0x12717657 -> :sswitch_39
        -0xd7815ae -> :sswitch_38
        -0xa310e8a -> :sswitch_37
        -0x8efed14 -> :sswitch_36
        -0x8b4339f -> :sswitch_35
        -0x83a5383 -> :sswitch_34
        -0x5ffb810 -> :sswitch_33
        -0x46f772e -> :sswitch_32
        -0x1a6e7d0 -> :sswitch_31
        0x30c072 -> :sswitch_30
        0x30cf41 -> :sswitch_2f
        0x323b5e -> :sswitch_2e
        0x363585 -> :sswitch_2d
        0x547b9a4 -> :sswitch_2c
        0x5a863a7 -> :sswitch_2b
        0x68ac288 -> :sswitch_2a
        0x68ac462 -> :sswitch_29
        0x6c257df -> :sswitch_28
        0x80c339b -> :sswitch_27
        0xb07b013 -> :sswitch_26
        0xe24026e -> :sswitch_25
        0x20c2801a -> :sswitch_24
        0x251993ad -> :sswitch_23
        0x276818de -> :sswitch_22
        0x27c1d6ad -> :sswitch_21
        0x2894b589 -> :sswitch_20
        0x2b19d394 -> :sswitch_1f
        0x2d3e6e74 -> :sswitch_1e
        0x2d9208a0 -> :sswitch_1d
        0x2ea76694 -> :sswitch_1c
        0x302bd54d -> :sswitch_1b
        0x304b5275 -> :sswitch_1a
        0x30b487aa -> :sswitch_19
        0x310633ae -> :sswitch_18
        0x327f473e -> :sswitch_17
        0x35abdbf4 -> :sswitch_16
        0x38a73b23 -> :sswitch_15
        0x3d13bd7d -> :sswitch_14
        0x3fd31549 -> :sswitch_13
        0x404a0027 -> :sswitch_12
        0x416a9e0f -> :sswitch_11
        0x434f294b -> :sswitch_10
        0x446526e2 -> :sswitch_f
        0x465c428a -> :sswitch_e
        0x48b444b2 -> :sswitch_d
        0x49b0bd5a -> :sswitch_c
        0x532d63e7 -> :sswitch_b
        0x58e48bbf -> :sswitch_a
        0x5e69b6b6 -> :sswitch_9
        0x607e963c -> :sswitch_8
        0x63a518c2 -> :sswitch_7
        0x662425d6 -> :sswitch_6
        0x696c1ea0 -> :sswitch_5
        0x6e6f530e -> :sswitch_4
        0x6ef5269a -> :sswitch_3
        0x6f0f8fea -> :sswitch_2
        0x790e2324 -> :sswitch_1
        0x7c2bb6c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5b
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final runAttachAgent(Ljava/io/PrintWriter;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "Unknown process: "

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v3, "attachAgent"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/am/ActivityManagerService;->findProcessLOSP(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceDebuggable(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v5, v1}, Landroid/app/IApplicationThread$Delegator;->attachAgent(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runBugReport(Ljava/io/PrintWriter;)I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v0, "--progress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "--telephony"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Landroid/app/IActivityManager;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V

    :cond_3
    const-string/jumbo p0, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runCapabilities(Ljava/io/PrintWriter;)I
    .locals 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "--protobuf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    const-string/jumbo v0, "java.vm.name"

    const-string v3, "?"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "java.vm.version"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v2}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    sget-object v4, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/server/am/nano/Capability;

    iput-object v4, v2, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    move v4, v1

    :goto_1
    sget-object v5, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    new-instance v6, Lcom/android/server/am/nano/Capability;

    invoke-direct {v6}, Lcom/android/server/am/nano/Capability;-><init>()V

    aget-object v5, v5, v4

    iput-object v5, v6, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Lcom/android/server/am/nano/VMCapability;

    iput-object v5, v2, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    move v5, v1

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_3

    new-instance v6, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v6}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aget-object v7, v4, v5

    iput-object v7, v6, Lcom/android/server/am/nano/VMCapability;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Lcom/android/server/am/nano/FrameworkCapability;

    iput-object v5, v2, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    move v5, v1

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_4

    new-instance v6, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v6}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aget-object v7, v4, v5

    iput-object v7, v6, Lcom/android/server/am/nano/FrameworkCapability;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v4}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    iput-object v0, v4, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    iput-object v3, v4, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {v2}, Lcom/android/server/am/nano/Capabilities;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    const-string p0, "Error while serializing capabilities protobuffer"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    const-string p0, "Format: 2"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    array-length v2, p0

    move v4, v1

    :goto_4
    if-ge v4, v2, :cond_6

    aget-object v5, p0, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_7

    aget-object v5, p0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "vm:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_8

    aget-object v5, p0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "framework:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vm_name:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "vm_version:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    return v1
.end method

.method public final runClearBadProcess(Ljava/io/PrintWriter;)I
    .locals 8

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown option "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result v1

    :cond_2
    const-string v0, "Clearing \'"

    const-string v4, "\' in u"

    const-string v5, " from bad processes list"

    invoke-static {v1, v0, v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    if-nez v4, :cond_3

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_6

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    if-eq v1, v3, :cond_4

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v1, v7, :cond_5

    :cond_4
    invoke-virtual {v0, v2, v6}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    monitor-exit p1

    :goto_2
    const/4 p0, 0x0

    return p0

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final runClearDebugApp()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final runClearExitInfo()I
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runClearExitInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object v3, v0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v6, 0x20000

    invoke-virtual {v3, p0, v6, v7, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    invoke-virtual {v0, v3, v1, p0, v5}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(IILjava/lang/String;Z)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    iget-object p0, v2, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v5}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final runClearRecentApps()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V

    return-void
.end method

.method public final runClearStartInfo()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runClearStartInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    iget-boolean v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-ne v1, v3, :cond_5

    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x20000

    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(ILjava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    :goto_3
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final runClearWatchHeap()V
    .locals 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public final runCompact(Ljava/io/PrintWriter;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "some"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v1, :cond_6

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Executing system compaction"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "compactAllSystem"

    const-string v2, "Compaction"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    const-string p0, "Finished system compaction"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_2
    const-string/jumbo p1, "native"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "some"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v5, 0x5

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, v5, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: unknown compaction type \'"

    const-string v1, "\'"

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: failed to parse \'"

    const-string v0, "\' as a PID"

    invoke-static {p0, p1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown compact command \'"

    const-string v1, "\'"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not find process"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Process record found pid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v4, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing full compaction for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->SHELL:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Finished full compaction for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_8
    if-eqz v2, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing some compaction for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->SHELL:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Finished some compaction for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final runCompat(Ljava/io/PrintWriter;)I
    .locals 19

    move-object/from16 v1, p1

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "--no-kill"

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "-all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "\'."

    const-string/jumbo v7, "reset"

    const-wide/16 v9, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    const-string v0, "Invalid targetSdkVersion!"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_0
    move v4, v11

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v5, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v5, v5, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/compat/CompatChange;

    invoke-virtual {v13}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v13}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v13

    goto :goto_1

    :cond_3
    move-wide v13, v9

    :goto_1
    cmp-long v5, v13, v9

    if-nez v5, :cond_4

    const-string/jumbo v0, "Unknown or invalid change: \'"

    invoke-static {v1, v0, v4, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_4
    move v4, v11

    move v5, v12

    move-wide v9, v13

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    if-nez v5, :cond_5

    iget-object v14, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v14, v14, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Warning! Change "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " is not known yet. Enabling/disabling it could have no effect."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    move/from16 v16, v11

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    move/from16 v17, v12

    const v12, -0x4d6ada7d

    if-eq v11, v12, :cond_8

    const v12, 0x6761d4f

    if-eq v11, v12, :cond_7

    const v7, 0x639e22e8

    if-eq v11, v7, :cond_6

    goto :goto_3

    :cond_6
    const-string/jumbo v7, "disable"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    goto :goto_4

    :cond_8
    const-string/jumbo v7, "enable"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v7, :cond_9

    move/from16 v7, v17

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v7, v16

    :goto_4
    const-string v11, " changes gated by targetSdkVersion "

    const-string v12, "."

    const-string v8, " for "

    if-eqz v7, :cond_13

    move/from16 v18, v3

    const/4 v3, 0x1

    if-eq v7, v3, :cond_f

    const/4 v3, 0x2

    if-eq v7, v3, :cond_a

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid toggle value: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    :cond_a
    const-string v2, " to default value."

    if-eqz v5, :cond_c

    if-nez v18, :cond_b

    :try_start_4
    invoke-virtual {v0, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverrides(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverridesForTest(Ljava/lang/String;)V

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reset all changes for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    if-nez v18, :cond_d

    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverride(JLjava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_d
    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reset change "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No override exists for changeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    if-eqz v5, :cond_11

    invoke-virtual {v0, v13, v4}, Lcom/android/server/compat/PlatformCompat;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "No changes were disabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v14, v15}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    if-nez v18, :cond_12

    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    move/from16 v18, v3

    if-eqz v5, :cond_15

    invoke-virtual {v0, v13, v4}, Lcom/android/server/compat/PlatformCompat;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "No changes were enabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v14, v15}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    if-nez v18, :cond_16

    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_9
    return v17

    :goto_a
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    return v16
.end method

.method public final runCrash()I
    .locals 12

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move v6, v2

    move-object v7, v3

    goto :goto_1

    :catch_0
    move v6, v0

    move-object v7, v2

    :goto_1
    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v2

    :goto_2
    array-length v1, v0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    aget v8, v0, v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v5, "no_debugging_features"

    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v5, "Shell does not have permission to crash packages for user "

    invoke-static {v4, v5, v8}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const-string/jumbo v9, "shell-induced crash"

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return v2
.end method

.method public final runDisplay()I
    .locals 3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: unknown command \'"

    const-string v2, "\'"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->moveRootTaskToDisplay(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDumpHeap(Ljava/io/PrintWriter;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x2

    move v10, v3

    move-object v13, v5

    move v9, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_6

    const-string v8, "--user"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_0

    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_1
    const-string v8, "-n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const-string v8, "-g"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v12, v3

    goto :goto_0

    :cond_3
    const-string v8, "-m"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v11, v3

    goto :goto_1

    :cond_4
    const-string v8, "-b"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "png"

    goto :goto_0

    :cond_5
    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_6
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v6

    invoke-static {v6}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v6

    sget-object v14, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v14, v6}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v6

    const-string v14, "/data/local/tmp/heapdump-"

    const-string v15, ".prof"

    invoke-static {v14, v6, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    move-object v14, v6

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v0, "Error: Arguments cannot be placed after the heap file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_8
    const-string/jumbo v6, "w"

    invoke-virtual {v0, v14, v6}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    if-nez v15, :cond_9

    return v7

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v17, 0x0

    const-string v4, "File: "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v6, v4}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v6, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    move/from16 v16, v7

    move-object v7, v0

    move/from16 v0, v16

    move-object/from16 v16, v3

    invoke-interface/range {v7 .. v16}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v1, "HEAP DUMP FAILED on process "

    invoke-static {v2, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a
    const-string/jumbo v0, "Waiting for dump to finish..."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v17

    :catch_0
    const-string v0, "Caught InterruptedException"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17
.end method

.method public final runFgsNotificationRateLimit()V
    .locals 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must be either \'enable\' or \'disable\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->enableFgsNotificationRateLimit(Z)Z

    return-void
.end method

.method public final runForceStop()I
    .locals 8

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ConfigForbiddenADBKillForceStopApps"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: cannot force-stop app - package: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v2, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    return v5
.end method

.method public final runFreeze(Ljava/io/PrintWriter;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "--sticky"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "Freezing"

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "Unfreezing"

    :goto_1
    const-string v4, " process "

    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") sticky="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iput-boolean v0, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5, v2, v0}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runGetBgRestrictionLevel(Ljava/io/PrintWriter;)I
    .locals 4

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_3

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query app background restriction level"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p0}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final runGetConfig(Ljava/io/PrintWriter;)I
    .locals 15

    move-object/from16 v4, p1

    const/4 v0, -0x1

    const/4 v6, 0x0

    move v7, v0

    move v1, v6

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v8, "--days"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "--days must be a positive integer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v8, "--proto"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    move v2, v9

    goto :goto_0

    :cond_2
    const-string v8, "--device"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v9

    goto :goto_0

    :cond_3
    const-string v1, "--display"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "--display must be a non-negative integer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Activity manager has no configuration"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_7
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v2, "Error: Display does not exist: "

    invoke-static {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v0

    :cond_8
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v8, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v2, :cond_a

    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v0, 0x10b00000001L

    invoke-virtual {v5, v8, v0, v1, v12}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    if-eqz v3, :cond_9

    const-wide v9, 0x10b00000002L

    const/4 v11, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/util/DisplayMetrics;)V

    :cond_9
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return v6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v12}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "abi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    if-eqz v3, :cond_b

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/util/DisplayMetrics;)V

    :cond_b
    if-ltz v7, :cond_f

    const-string/jumbo p0, "usagestats"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const p0, 0x5265c00

    mul-int/2addr v7, p0

    int-to-long v0, v7

    sub-long v10, v12, v0

    :try_start_0
    const-string/jumbo v14, "com.android.shell"

    const/4 v9, 0x4

    invoke-interface/range {v8 .. v14}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_c

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/ConfigurationStats;

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_d

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_e
    new-instance p0, Lcom/android/server/am/ActivityManagerShellCommand$4;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$4;-><init>(Landroid/util/ArrayMap;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_3

    :catch_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    const-string/jumbo v1, "recentConfigs:"

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v6

    :goto_4
    if-ge v1, v0, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    invoke-static {v3}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return v6
.end method

.method public final runGetCurrentForegroundProcess(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)V
    .locals 4

    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;

    invoke-direct {v0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    iput-object p1, v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    iput-object p2, v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "q"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "quit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    throw p0
.end method

.method public final runGetCurrentUser(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Current user not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runGetInactive(Ljava/io/PrintWriter;)I
    .locals 3

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    const-string/jumbo v2, "com.android.shell"

    invoke-interface {v1, p0, v0, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Idle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetIsolatedProcesses(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "getIsolatedProcesses()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .locals 3

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "com.android.shell"

    invoke-interface {v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/AppStandbyInfo;

    iget-object v1, v0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final runGetStartedUserState(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object p0

    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {p0}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "User is not started: "

    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final runHang(Ljava/io/PrintWriter;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v1, "--allow-restart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    const-string v2, "Hanging the system..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Hanging failed, since caller "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " did not provide a ShellCallback!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v3
.end method

.method public final runIdleMaintenance(Ljava/io/PrintWriter;)I
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string/jumbo v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p1}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->performIdleMaintenance()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsUserStopped(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final runKill()I
    .locals 8

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ConfigForbiddenADBKillForceStopApps"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: cannot kill app - package: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v2, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    return v5
.end method

.method public final runMakeIdle()I
    .locals 3

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runMemoryFactor(Ljava/io/PrintWriter;)I
    .locals 11

    const-string/jumbo v0, "NORMAL"

    const-string/jumbo v1, "MODERATE"

    const-string v2, "LOW"

    const-string v3, "CRITICAL"

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v6, "runMemoryFactor()"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v10, v9

    goto :goto_1

    :sswitch_0
    const-string/jumbo v10, "reset"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "show"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "set"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    move v10, v8

    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown command \'"

    const-string v0, "\'"

    invoke-static {p0, p1, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    return v8

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    move-result p0

    if-eq p0, v9, :cond_7

    if-eqz p0, :cond_6

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p0, "<UNKNOWN>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v8

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_3
    move v0, v9

    goto :goto_4

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v5

    goto :goto_4

    :sswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v6

    goto :goto_4

    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move v0, v7

    goto :goto_4

    :sswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    move v0, v8

    :goto_4
    packed-switch v0, :pswitch_data_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move v0, v9

    :goto_5
    if-ltz v0, :cond_d

    if-le v0, v5, :cond_c

    goto :goto_6

    :cond_c
    move v5, v0

    goto :goto_7

    :cond_d
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown level option: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v8, v9

    goto :goto_8

    :pswitch_3
    move v5, v7

    goto :goto_7

    :pswitch_4
    move v5, v6

    goto :goto_7

    :pswitch_5
    move v5, v8

    :goto_7
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    :goto_8
    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1bc62 -> :sswitch_2
        0x35dafd -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76664f19 -> :sswitch_6
        -0x5cfe9861 -> :sswitch_5
        0x12734 -> :sswitch_4
        0x9c2ed03 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final runMonitor(Ljava/io/PrintWriter;)I
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v7, v1

    move-object v10, v7

    move v8, v2

    move v9, v8

    move v11, v9

    move v12, v11

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    const-string v4, "--gdb"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v4, "-p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    const-string v4, "-m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v8, v13

    goto :goto_0

    :cond_2
    const-string v4, "-s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v9, v13

    goto :goto_0

    :cond_3
    const-string v4, "-c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v11, v13

    goto :goto_0

    :cond_4
    const-string v4, "-k"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v12, v13

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_6
    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: -k and -c options can\'t be used together."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_7
    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {p0, v3, p1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    iput v2, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    new-instance p0, Ljava/io/InputStreamReader;

    iget-object p1, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    invoke-direct {p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    move p0, v2

    goto/16 :goto_a

    :cond_8
    const-string/jumbo v0, "q"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "quit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_d

    :cond_9
    iget v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-ne v0, v13, :cond_e

    const-string/jumbo v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "continue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "k"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "kill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e

    :cond_c
    :goto_2
    invoke-virtual {v3, v13}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_9

    :cond_d
    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_9

    :cond_e
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v4, :cond_15

    const-string/jumbo v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "continue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    const-string/jumbo v0, "k"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "kill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_10
    const-string/jumbo v0, "w"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "wait"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    :goto_4
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_9

    :cond_13
    :goto_5
    invoke-virtual {v3, v13}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_9

    :cond_14
    :goto_6
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_9

    :cond_15
    if-ne v0, v5, :cond_1a

    const-string/jumbo v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "continue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    const-string/jumbo v0, "k"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "kill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_7

    :cond_17
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    :goto_7
    invoke-virtual {v3, v13}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_9

    :cond_19
    :goto_8
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_9

    :cond_1a
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    move p0, v13

    :goto_a
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1b

    :try_start_1
    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_1b
    :goto_b
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v3

    goto/16 :goto_1

    :goto_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_1c
    :goto_d
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1d
    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {p0, v1, p1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    return v2

    :goto_e
    :try_start_3
    iget-object p1, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {p0, v1, p1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    return v2

    :goto_f
    iget-object p1, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {p1, v1, v0}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    throw p0
.end method

.method public final runPackageImportance(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "com.android.shell"

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final runProfile()I
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "start"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Error: Unknown option: "

    const-string v8, "--user"

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-eqz v6, :cond_6

    :goto_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_0
    const-string v5, "--clock-type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ProfilerInfo;->getClockTypeFromString(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    goto :goto_0

    :cond_1
    const-string v5, "--profiler-output-version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    goto :goto_0

    :cond_2
    const-string v5, "--streaming"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_0

    :cond_3
    const-string v5, "--sampling"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_5
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move v14, v3

    move-object v12, v4

    move v13, v10

    move v4, v2

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v6, "stop"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :goto_2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :cond_7
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_8
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move v14, v2

    move-object v12, v4

    move v13, v10

    move v4, v14

    goto :goto_5

    :cond_9
    const-string/jumbo v7, "lowoverhead"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_4
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    move v14, v4

    move-object v12, v5

    move v13, v10

    move v4, v3

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Profile command not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_3

    :goto_5
    if-ne v13, v9, :cond_e

    const-string v0, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_e
    if-eqz v14, :cond_f

    if-eqz v4, :cond_10

    :cond_f
    if-ne v4, v3, :cond_12

    if-nez v14, :cond_12

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v3

    if-lez v3, :cond_12

    :cond_10
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "w"

    invoke-virtual {v0, v3, v5}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    if-nez v17, :cond_11

    return v9

    :cond_11
    new-instance v15, Landroid/app/ProfilerInfo;

    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    iget v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v3

    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 v23, v7

    move/from16 v24, v8

    invoke-direct/range {v15 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    goto :goto_6

    :cond_12
    const/4 v15, 0x0

    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    move/from16 v16, v4

    invoke-interface/range {v11 .. v16}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "PROFILE FAILED on process "

    invoke-static {v1, v0, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_13
    return v2

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Profile command "

    const-string v2, " not valid"

    invoke-static {v1, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final runRestart(Ljava/io/PrintWriter;)I
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string/jumbo v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->restart()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runScreenCompat()I
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSendBroadcast(Ljava/io/PrintWriter;)V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Landroid/util/TeeWriter;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Writer;

    sget-object v4, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v2, 0x400000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v11, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v11, v1}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v15, v3

    goto :goto_0

    :cond_0
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v5

    move-object v15, v4

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Broadcasting: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    if-nez v1, :cond_1

    :goto_1
    move-object/from16 v19, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :goto_2
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/16 v18, -0x1

    const/16 v20, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    move/from16 v22, v1

    invoke-interface/range {v6 .. v22}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v1

    const-string v2, "ActivityManager"

    const-string v3, "Enqueued broadcast %s: "

    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    if-nez v0, :cond_3

    monitor-enter v11

    :goto_3
    :try_start_1
    iget-boolean v0, v11, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_2

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    monitor-exit v11

    return-void

    :goto_4
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_5
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final runSendTrimMemory()I
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v3, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Can\'t use user \'all\'"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v6, v2

    goto :goto_1

    :sswitch_0
    const-string v6, "HIDDEN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "RUNNING_LOW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move v6, v0

    goto :goto_1

    :sswitch_2
    const-string v6, "COMPLETE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "MODERATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "RUNNING_MODERATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_5
    const-string v6, "BACKGROUND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "RUNNING_CRITICAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move v6, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown level option: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_0
    const/16 v0, 0x14

    goto :goto_2

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x50

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x3c

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x28

    goto :goto_2

    :pswitch_5
    const/16 v0, 0xf

    :goto_2
    :pswitch_6
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v5, v4, v3, v0}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Unknown error: failed to set trim level"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_a
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_6
        -0x327dbed2 -> :sswitch_5
        -0xd10205d -> :sswitch_4
        0x9c2ed03 -> :sswitch_3
        0xaeb2139 -> :sswitch_2
        0x3fef1094 -> :sswitch_1
        0x7f0191aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runServiceRestartBackoff(Ljava/io/PrintWriter;)I
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.SET_PROCESS_LIMIT"

    const-string/jumbo v3, "runServiceRestartBackoff()"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v4, v3

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "disable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "show"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown command \'"

    const-string v0, "\'"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActiveServices;->setServiceRestartBackoffEnabledLocked(Ljava/lang/String;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez p0, :cond_3

    const-string/jumbo p0, "enabled"

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "disabled"

    :goto_2
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_4
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActiveServices;->setServiceRestartBackoffEnabledLocked(Ljava/lang/String;Z)V

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_2
        0x35dafd -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetAgentApp()V
    .locals 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final runSetBgAbusiveUids()I
    .locals 14

    const-string/jumbo v0, "Malformed input"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    check-cast v6, Lcom/android/server/am/AppBatteryTracker;

    const/4 v2, -0x1

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Unable to get bg battery tracker"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_2
    if-nez v1, :cond_3

    iget-object p0, v6, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v6}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    return v4

    :cond_3
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    new-array v5, v3, [I

    array-length v7, v1

    new-array v7, v7, [[D

    move v8, v4

    :goto_1
    :try_start_0
    array-length v9, v1

    if-ge v8, v9, :cond_7

    aget-object v9, v1, v8

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_4
    aget-object v10, v9, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v5, v8

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x5

    if-eq v10, v11, :cond_5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_5
    array-length v10, v9

    new-array v10, v10, [D

    aput-object v10, v7, v8

    move v10, v4

    :goto_2
    array-length v11, v9

    if-ge v10, v11, :cond_6

    aget-object v11, v7, v8

    aget-object v12, v9, v10

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    aput-wide v12, v11, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    iget-object p0, v6, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    move p0, v4

    :goto_3
    if-ge p0, v3, :cond_8

    iget-object v0, v6, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    aget v1, v5, p0

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    aget-object v8, v7, p0

    iput-object v8, v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    new-instance v8, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v8, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    return v4

    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runSetBgRestrictionLevel(Ljava/io/PrintWriter;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_1
    move v4, v1

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v5, "exempted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_1
    const-string/jumbo v5, "adaptive_bucket"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_2
    const-string/jumbo v5, "unrestricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_3
    const-string/jumbo v5, "background_restricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_4
    const-string/jumbo v5, "force_stopped"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_5
    const-string/jumbo v5, "custom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_6
    const-string/jumbo v5, "restricted_bucket"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_7
    const-string/jumbo v5, "user_launch_only"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move v4, v0

    :goto_2
    packed-switch v4, :pswitch_data_0

    move v5, v0

    goto :goto_4

    :pswitch_0
    const/16 v4, 0x14

    :goto_3
    move v5, v4

    goto :goto_4

    :pswitch_1
    const/16 v4, 0x1e

    goto :goto_3

    :pswitch_2
    const/16 v4, 0xa

    goto :goto_3

    :pswitch_3
    const/16 v4, 0x32

    goto :goto_3

    :pswitch_4
    const/16 v4, 0x3c

    goto :goto_3

    :pswitch_5
    const/16 v4, 0x5a

    goto :goto_3

    :pswitch_6
    const/16 v4, 0x28

    goto :goto_3

    :pswitch_7
    const/16 v4, 0x46

    goto :goto_3

    :goto_4
    if-nez v5, :cond_a

    const-string p0, "Error: invalid restriction level"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_a
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v6, 0x400000

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v6

    invoke-virtual {v4, v3, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_c

    if-eqz p1, :cond_c

    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "No permission to change app restriction level"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result v7

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v8, 0x400

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    const-string p0, "Error: userId:"

    const-string v0, " package:"

    const-string v4, " is not found"

    invoke-static {v2, p0, v0, v3, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ab801bc -> :sswitch_7
        -0x5990cdb2 -> :sswitch_6
        -0x5069748f -> :sswitch_5
        -0x40475787 -> :sswitch_4
        -0x2e385ff4 -> :sswitch_3
        0x31226bb4 -> :sswitch_2
        0x50905fd3 -> :sswitch_1
        0x7a509cbe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final runSetDebugApp()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "-w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const-string v2, "--persistent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v3, v1, v2}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return v0
.end method

.method public final runSetDeterministicUidIdle()I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->setDeterministicUidIdle(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetForegroundServiceDelegate(Ljava/io/PrintWriter;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x2

    :goto_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "start"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v5, :cond_2

    move v3, v15

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "stop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v14

    :goto_1
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-wide/32 v6, 0x400000

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v6

    invoke-virtual {v5, v8, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "FgsDelegate"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_4

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "No permission to start/stop foreground service delegate"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v14

    move v5, v4

    :goto_3
    :try_start_3
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, v7, :cond_5

    if-eqz v9, :cond_5

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    new-instance v5, Landroid/app/ForegroundServiceDelegationOptions;

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/16 v13, 0xc

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/app/ForegroundServiceDelegationOptions;-><init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v15

    :goto_5
    if-ltz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ForegroundServiceDelegationOptions;

    if-eqz v3, :cond_7

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/app/ActivityManagerInternal;->startForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_7
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, v4}, Landroid/app/ActivityManagerInternal;->stopForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;)V

    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v5, :cond_9

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForegroundServiceDelegate can not find process for packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_9
    :goto_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v14

    :goto_8
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :goto_9
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    const-string v0, "Error: userId:"

    const-string v3, " package:"

    const-string v5, " is not found"

    invoke-static {v2, v0, v3, v8, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_a
    const-string v0, "Error: action is either start or stop"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runSetInactive()I
    .locals 3

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v2, v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetStandbyBucket()I
    .locals 7

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    const-string/jumbo v6, "usagestats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v6

    if-nez v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v6, v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    return v5

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v3, v1, v4}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v4, v1, v3}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v6, p0, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    return v5
.end method

.method public final runSetStopUserOnSwitch(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "setStopUserOnSwitch()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    if-nez v0, :cond_0

    const-string/jumbo v0, "setStopUserOnSwitch(): resetting to default value"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    const-string/jumbo p0, "Reset to default value"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "runSetStopUserOnSwitch(): setting to %d (%b)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Set to "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetWatchHeap()V
    .locals 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public final runStack(Ljava/io/PrintWriter;)I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v4, v2

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "move-task"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "list"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "info"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "remove"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_1
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown command \'"

    const-string v0, "\'"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, p1, v1, v0}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V

    return v3

    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: bad toTop arg: "

    invoke-static {p0, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    return v3

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v3

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    return v3

    :sswitch_data_0
    .sparse-switch
        -0x37b5077c -> :sswitch_3
        0x3164ae -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x3ceed601 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runStartActivity(Ljava/io/PrintWriter;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v15, -0x1

    const/4 v8, 0x1

    if-ne v2, v15, :cond_0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v6

    move-object v4, v7

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "ActivityManagerShellCommand"

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v3

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object v4, v7

    move v7, v2

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    move-object v3, v6

    const-wide/16 v5, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_3
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Stopping: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v5, v2, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-wide/16 v5, 0xfa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Intent does not match any activities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_5
    move-object v3, v6

    move-object v4, v7

    :catch_0
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const/16 v16, 0x0

    if-nez v2, :cond_7

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v12, v16

    goto :goto_6

    :cond_7
    :goto_4
    if-eqz v2, :cond_9

    const-string/jumbo v5, "w"

    invoke-virtual {v0, v2, v5}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_8

    return v8

    :cond_8
    move-object/from16 v19, v2

    goto :goto_5

    :cond_9
    move-object/from16 v19, v16

    :goto_5
    new-instance v17, Landroid/app/ProfilerInfo;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    iget v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    iget v13, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    move-object/from16 v18, v2

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-direct/range {v17 .. v26}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object/from16 v12, v17

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Starting: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v2, v15, :cond_a

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_7

    :cond_a
    move-object/from16 v2, v16

    :goto_7
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    if-eq v5, v15, :cond_c

    if-nez v2, :cond_b

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_b
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayAreaFeatureId(I)V

    :cond_c
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v5, :cond_e

    if-nez v2, :cond_d

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_d
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_e
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_10

    if-nez v2, :cond_f

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_f
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_10
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    if-eqz v5, :cond_12

    if-nez v2, :cond_11

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_11
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :cond_12
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_14

    if-nez v2, :cond_13

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_13
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setApplyBigFreeformSize(Z)V

    :cond_14
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v5, :cond_16

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsResumeAffordanceRequested:Z

    if-eqz v5, :cond_16

    if-nez v2, :cond_15

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_15
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    :cond_16
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v5, :cond_18

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceLaunchTaskOnHome:Z

    if-eqz v5, :cond_18

    if-nez v2, :cond_17

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_17
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setForceLaunchTaskOnHome()V

    :cond_18
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v5, :cond_1a

    if-nez v2, :cond_19

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_19
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    :cond_1a
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v5, v15, :cond_1c

    if-nez v2, :cond_1b

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_1b
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v5, :cond_1c

    invoke-virtual {v2, v8, v8}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    :cond_1c
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v5, :cond_1e

    if-nez v2, :cond_1d

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_1d
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    :cond_1e
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    if-eqz v5, :cond_20

    if-nez v2, :cond_1f

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_1f
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    :cond_20
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    if-eqz v5, :cond_22

    if-nez v2, :cond_21

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_21
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    :cond_22
    invoke-virtual {v3}, Landroid/content/Intent;->collectExtraIntentKeys()V

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    :cond_23
    move-object/from16 v13, v16

    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    iget-object v2, v5, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move v5, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move-object v7, v4

    const-string/jumbo v4, "com.android.shell"

    move/from16 v16, v5

    const/4 v5, 0x0

    move/from16 v19, v8

    const/4 v8, 0x0

    move/from16 v15, v19

    move/from16 v19, v16

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v2

    move-object v3, v6

    move-object v4, v7

    iget v5, v2, Landroid/app/WaitResult;->result:I

    move-object/from16 v16, v2

    goto :goto_9

    :cond_24
    move-object v5, v2

    move v15, v8

    move/from16 v19, v9

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v13, v5

    goto :goto_8

    :cond_25
    move-object/from16 v13, v16

    :goto_8
    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move-object v7, v4

    const-string/jumbo v4, "com.android.shell"

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v5

    move-object v3, v6

    move-object v4, v7

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v2, :cond_26

    move-object v2, v1

    goto :goto_a

    :cond_26
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    :goto_a
    const/16 v8, -0x62

    if-eq v5, v8, :cond_34

    const/16 v8, -0x61

    if-eq v5, v8, :cond_33

    if-eqz v5, :cond_2b

    if-eq v5, v15, :cond_2a

    const/4 v8, 0x2

    if-eq v5, v8, :cond_29

    const/4 v8, 0x3

    if-eq v5, v8, :cond_28

    const/16 v8, 0x64

    if-eq v5, v8, :cond_27

    packed-switch v5, :pswitch_data_0

    const-string v0, "Error: Activity not started, unknown error code "

    invoke-static {v2, v0, v5}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v15

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Activity not started, unable to resolve "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :pswitch_1
    const-string v0, "Error type 3"

    const-string v1, "Error: Activity class "

    invoke-static {v2, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :pswitch_2
    const-string v0, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :pswitch_3
    const-string v0, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_27
    const-string/jumbo v5, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_28
    const-string/jumbo v5, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_29
    const-string/jumbo v5, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_2a
    const-string/jumbo v5, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2b
    :goto_b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v2, :cond_30

    if-nez v16, :cond_2c

    new-instance v2, Landroid/app/WaitResult;

    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_c

    :cond_2c
    move-object/from16 v2, v16

    :goto_c
    iget-boolean v5, v2, Landroid/app/WaitResult;->timeout:Z

    if-eqz v5, :cond_2d

    const-string/jumbo v5, "timeout"

    goto :goto_d

    :cond_2d
    const-string/jumbo v5, "ok"

    :goto_d
    const-string/jumbo v8, "Status: "

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "LaunchState: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/app/WaitResult;->launchState:I

    invoke-static {v8}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v5, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Activity: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    iget-wide v8, v2, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_2f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "TotalTime: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v2, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "WaitTime: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v6, v17

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    :cond_30
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    sub-int/2addr v2, v15

    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v2, :cond_31

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    :cond_31
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v2, :cond_32

    return v19

    :cond_32
    move-object v6, v3

    move-object v7, v4

    move v8, v15

    const/4 v15, -0x1

    goto/16 :goto_0

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Activity not started, voice control not allowed for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_34
    const-string v0, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x5e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runStartActivityForCarlife(Ljava/io/PrintWriter;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v15, -0x1

    const/4 v8, 0x1

    if-ne v2, v15, :cond_0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const-string/jumbo v9, "com.samsung.android.carlink"

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.baidu.carlife"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.baidu.carlife.CarlifeActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.carlink.carlife.CarLifeUsbConnectionActivity"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.carlink.carlife.USB_ADB_ATTACHED"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "usb_type"

    const-string/jumbo v3, "adb"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v6

    move-object v4, v7

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "ActivityManagerShellCommand"

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v3

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object v4, v7

    move v7, v2

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    move-object v3, v6

    const-wide/16 v5, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_4

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_4
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Stopping: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v5, v2, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-wide/16 v5, 0xfa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Intent does not match any activities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_6
    move-object v3, v6

    move-object v4, v7

    :catch_0
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const/16 v16, 0x0

    if-nez v2, :cond_8

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v12, v16

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v2, :cond_a

    const-string/jumbo v5, "w"

    invoke-virtual {v0, v2, v5}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_9

    return v8

    :cond_9
    move-object/from16 v19, v2

    goto :goto_5

    :cond_a
    move-object/from16 v19, v16

    :goto_5
    new-instance v17, Landroid/app/ProfilerInfo;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    iget v13, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    move-object/from16 v18, v2

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    invoke-direct/range {v17 .. v26}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object/from16 v12, v17

    :goto_6
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v17, :cond_c

    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7

    :cond_b
    move v2, v10

    :goto_7
    if-eqz v2, :cond_c

    const-string/jumbo v2, "Starting: Intent { cmp=com.baidu.carlife/.CarlifeActivity }"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Starting: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v2, v15, :cond_d

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_9

    :cond_d
    move-object/from16 v2, v16

    :goto_9
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    if-eq v5, v15, :cond_f

    if-nez v2, :cond_e

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_e
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayAreaFeatureId(I)V

    :cond_f
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v5, :cond_11

    if-nez v2, :cond_10

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_10
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_11
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    if-eqz v5, :cond_13

    if-nez v2, :cond_12

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_12
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :cond_13
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_15

    if-nez v2, :cond_14

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_14
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setApplyBigFreeformSize(Z)V

    :cond_15
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v5, :cond_17

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsResumeAffordanceRequested:Z

    if-eqz v5, :cond_17

    if-nez v2, :cond_16

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_16
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    :cond_17
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v5, :cond_19

    if-nez v2, :cond_18

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_18
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    :cond_19
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v5, v15, :cond_1b

    if-nez v2, :cond_1a

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_1a
    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v5, :cond_1b

    invoke-virtual {v2, v8, v8}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    :cond_1b
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v5, :cond_1d

    if-nez v2, :cond_1c

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_1c
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    :cond_1d
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    if-eqz v5, :cond_1f

    if-nez v2, :cond_1e

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_1e
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    :cond_1f
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    if-eqz v5, :cond_21

    if-nez v2, :cond_20

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :cond_20
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    :cond_21
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    :cond_22
    move-object/from16 v13, v16

    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    iget-object v2, v5, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v5, v9

    const/4 v9, 0x0

    move v6, v10

    const/4 v10, 0x0

    move v7, v6

    move-object v6, v3

    const/4 v3, 0x0

    move/from16 v16, v7

    move-object v7, v4

    const-string/jumbo v4, "com.android.shell"

    move-object/from16 v20, v5

    const/4 v5, 0x0

    move/from16 v21, v8

    const/4 v8, 0x0

    move-object/from16 v15, v20

    move/from16 v20, v16

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v2

    move-object v3, v6

    move-object v4, v7

    iget v5, v2, Landroid/app/WaitResult;->result:I

    move-object/from16 v16, v2

    goto :goto_b

    :cond_23
    move-object v5, v2

    move-object v15, v9

    move/from16 v20, v10

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v13, v5

    goto :goto_a

    :cond_24
    move-object/from16 v13, v16

    :goto_a
    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move-object v7, v4

    const-string/jumbo v4, "com.android.shell"

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v5

    move-object v3, v6

    move-object v4, v7

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v2, :cond_25

    move-object v2, v1

    goto :goto_c

    :cond_25
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    :goto_c
    if-eqz v17, :cond_27

    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_26

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_d

    :cond_26
    move/from16 v10, v20

    :goto_d
    if-eqz v10, :cond_27

    const-string/jumbo v5, "Warning: Activity not started, its current task has been brought to the front."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_27
    const/16 v8, -0x62

    if-eq v5, v8, :cond_35

    const/16 v8, -0x61

    if-eq v5, v8, :cond_34

    if-eqz v5, :cond_2c

    const/4 v8, 0x1

    if-eq v5, v8, :cond_2b

    const/4 v9, 0x2

    if-eq v5, v9, :cond_2a

    const/4 v9, 0x3

    if-eq v5, v9, :cond_29

    const/16 v9, 0x64

    if-eq v5, v9, :cond_28

    packed-switch v5, :pswitch_data_0

    const-string v0, "Error: Activity not started, unknown error code "

    invoke-static {v2, v0, v5}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v8

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Activity not started, unable to resolve "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :pswitch_1
    const-string v0, "Error type 3"

    const-string v1, "Error: Activity class "

    invoke-static {v2, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :pswitch_2
    const-string v0, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :pswitch_3
    const-string v0, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_28
    const-string/jumbo v5, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_29
    const-string/jumbo v5, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    const-string/jumbo v5, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_2b
    const-string/jumbo v5, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c
    :goto_e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v2, :cond_31

    if-nez v16, :cond_2d

    new-instance v2, Landroid/app/WaitResult;

    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_f

    :cond_2d
    move-object/from16 v2, v16

    :goto_f
    iget-boolean v5, v2, Landroid/app/WaitResult;->timeout:Z

    if-eqz v5, :cond_2e

    const-string/jumbo v5, "timeout"

    goto :goto_10

    :cond_2e
    const-string/jumbo v5, "ok"

    :goto_10
    const-string/jumbo v8, "Status: "

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "LaunchState: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/app/WaitResult;->launchState:I

    invoke-static {v8}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v5, :cond_2f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Activity: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f
    iget-wide v8, v2, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "TotalTime: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v2, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "WaitTime: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v6, v18

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    :cond_31
    :goto_11
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    const/16 v22, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v2, :cond_32

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    :cond_32
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v2, :cond_33

    return v20

    :cond_33
    move-object v6, v3

    move-object v7, v4

    move-object v9, v15

    const/4 v8, 0x1

    const/4 v15, -0x1

    goto/16 :goto_0

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Activity not started, voice control not allowed for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :cond_35
    const/16 v22, 0x1

    const-string v0, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v22

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x5e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runStartInfoDetailedMonitoring(Ljava/io/PrintWriter;)I
    .locals 7

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "Package "

    iget-object v3, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, v0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    monitor-exit v3

    return v5

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p0, "ActivityManager AppStartInfo detailed monitoring disabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_8

    move v2, v5

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v6, v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v1, :cond_6

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager AppStartInfo detailed monitoring enabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    monitor-exit v3

    return v5

    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final runStartService(Ljava/io/PrintWriter;Z)I
    .locals 10

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_0

    const-string p0, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v3}, Landroid/content/Intent;->collectExtraIntentKeys()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget v8, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v2, 0x0

    const-string/jumbo v6, "com.android.shell"

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Error: Not found; no service started."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error: Requires permission "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!!"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "Error: "

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_3
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_4
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final runStartUser(Ljava/io/PrintWriter;)I
    .locals 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    const-string v6, "--display"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v2, "-w"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown option: "

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "--display must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v2, :cond_4

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {v6, v4}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(I)V

    :goto_1
    move-object v13, v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :goto_2
    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    const-class v7, Landroid/app/ActivityManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v6

    invoke-virtual {v7}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v7

    if-eq v6, v4, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    move v8, v0

    :goto_3
    if-eqz v8, :cond_6

    if-ne v6, v7, :cond_6

    :goto_4
    move v9, v7

    goto :goto_5

    :cond_6
    move v5, v0

    goto :goto_4

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, v6

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "runStartUser(): userId=%d, parentUserId=%d, currentUserId=%d, isProfile=%b, isVisibleProfile=%b, display=%d, waiter=%s"

    const-string v8, "ActivityManager"

    invoke-static {v8, v7, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "shell_runStartUser"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v9, 0x40

    invoke-static {v9, v10, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v6, ""

    if-eqz v5, :cond_7

    :try_start_0
    const-string/jumbo v1, "calling startProfileWithListener(%d, %s)"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v13}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v1, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v1, v4, v13}, Landroid/app/IActivityManager;->startProfileWithListener(ILandroid/os/IProgressListener;)Z

    move-result v1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :cond_7
    if-ne v3, v1, :cond_8

    const-string/jumbo v1, "calling startUserInBackgroundWithListener(%d)"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v1, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v1, v4, v13}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v1

    goto :goto_6

    :cond_8
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo p0, "Not supported"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :cond_9
    :try_start_1
    const-string/jumbo v1, "calling startUserInBackgroundVisibleOnDisplay(%d, %d, %s)"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6, v13}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v1, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v1, v4, v3, v13}, Landroid/app/IActivityManager;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " on display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    const-string/jumbo v1, "waiting %d ms"

    const v2, 0x1d4c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, v13, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "Thread interrupted unexpectedly."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    :cond_a
    :goto_7
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v1, :cond_b

    const-string/jumbo p0, "Success: user started"

    invoke-static {p1, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not start user"

    invoke-static {p0, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return v0

    :goto_9
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final runStopApp()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V

    return v0
.end method

.method public final runStopService(Ljava/io/PrintWriter;)I
    .locals 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string p0, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Stopping service: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Landroid/content/Intent;->collectExtraIntentKeys()V

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v4, 0x0

    invoke-interface {p1, v4, v1, v2, p0}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "Service not stopped: was not running."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const-string/jumbo p0, "Service stopped"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2
    if-ne p0, v3, :cond_3

    const-string p0, "Error stopping service"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final runStopUser()I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    const-string v5, "-w"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    const-string v2, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v1, v3}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>(I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ActivityManager"

    const-string v7, "Calling stopUser(%d, %b, %s)"

    invoke-static {v6, v7, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "shell_runStopUser-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-[stopUser]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v5, v3, v2, v1}, Landroid/app/IActivityManager;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, ""

    const/4 v1, -0x4

    if-eq v2, v1, :cond_7

    const/4 v1, -0x3

    if-eq v2, v1, :cond_6

    const/4 v1, -0x2

    if-eq v2, v1, :cond_5

    if-eq v2, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Unknown user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    const-string v0, " (Can\'t stop current user)"

    goto :goto_2

    :cond_6
    const-string v0, " (System user cannot be stopped)"

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Can\'t stop user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - one of its related users can\'t be stopped)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Switch failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_8
    if-eqz v1, :cond_9

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final runSuppressResizeConfigChanges()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->suppressResizeConfigChanges(Z)V

    return-void
.end method

.method public final runSwitchUser(Ljava/io/PrintWriter;)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v1, "-w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: UserSwitchabilityResult="

    invoke-static {p0, p1, v5}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v3

    :cond_2
    const-wide/16 v5, 0x40

    const-string/jumbo v3, "shell_runSwitchUser"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z

    move-result p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p0, :cond_4

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :cond_4
    :try_start_1
    const-string p0, "Error: Failed to switch to user %d\n"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final runTask(Ljava/io/PrintWriter;)I
    .locals 11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity manager is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "not "

    :goto_1
    const-string/jumbo v1, "in lockTaskMode"

    invoke-static {p1, p0, v1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v2

    :cond_2
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->setTaskResizeable(II)V

    return v2

    :cond_3
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    if-gez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: bad left arg: "

    invoke-static {v1, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-gez v5, :cond_5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: bad top arg: "

    invoke-static {v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-gtz v7, :cond_6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: bad right arg: "

    invoke-static {v0, v1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-gtz v9, :cond_7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: bad bottom arg: "

    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    if-nez v10, :cond_8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: invalid input bounds"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, p1, v10, v2}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V

    int-to-long p0, v2

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    :cond_9
    const-string/jumbo v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "Setting focus to task "

    invoke-static {p1, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V

    return v2

    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown command \'"

    const-string v1, "\'"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final runToUri(ILjava/io/PrintWriter;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final runTraceIpc(Ljava/io/PrintWriter;)I
    .locals 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    return v2

    :cond_0
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v1, "--dump-file"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    const-string/jumbo v4, "w"

    invoke-virtual {p0, v1, v4}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_4

    return v3

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v4}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "STOP TRACE FAILED."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_5
    const-string/jumbo p0, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: unknown trace ipc command \'"

    const-string v1, "\'"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final runTrackAssociations(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runTrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const-string p0, "Association tracking started."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "Association tracking already enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runUnlockUser(Ljava/io/PrintWriter;)I
    .locals 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "!"

    if-nez v2, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: token parameter not supported"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: secret parameter not supported"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->unlockUser2(ILandroid/os/IProgressListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "Success: user unlocked"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not unlock user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final runUntrackAssociations(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runUntrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    const-string p0, "Association tracking stopped."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "Association tracking not running."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runWaitForBroadcastBarrier(Ljava/io/PrintWriter;)I
    .locals 6

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move p1, v4

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "--flush-broadcast-loopers"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    const-string v1, "--flush-application-threads"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastBarrier(Ljava/io/PrintWriter;ZZ)V

    return v4
.end method

.method public final runWaitForBroadcastDispatch(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "waitForBroadcastDispatch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .locals 5

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move p1, v4

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p1, "--flush-broadcast-loopers"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;Z)V

    return v4
.end method

.method public final runWatchUids(Ljava/io/PrintWriter;)I
    .locals 8

    const/4 v0, -0x1

    const/16 v1, 0xf

    move v6, v0

    move v7, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "--oom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_0
    const-string v2, "--mask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;II)V

    const/4 p0, 0x0

    :try_start_0
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "Watching uid states...  available commands:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish watching"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/16 v3, 0x1f

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iget p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz p1, :cond_3

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_3
    :goto_1
    new-instance p1, Ljava/io/InputStreamReader;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    move p1, p0

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "q"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "quit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_3
    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_6

    :try_start_3
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_6
    :goto_4
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "Watching uid states...  available commands:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish watching"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v2

    goto :goto_2

    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    :goto_6
    iget p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz p1, :cond_8

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    :cond_8
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    return p0

    :goto_7
    :try_start_5
    iget-object v0, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz p1, :cond_9

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    :cond_9
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    return p0

    :goto_8
    iget p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz p1, :cond_a

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    :cond_a
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    throw p0
.end method

.method public final runWrite(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_1
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    monitor-exit p0

    const-string p0, "All tasks persisted."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final switchUserAndWaitForComplete(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$3;

    invoke-direct {v1, p1, v0}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    const-class v3, Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: Thread interrupted unexpectedly."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    return p1

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    throw p1
.end method

.method public final writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/util/DisplayMetrics;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const-wide v7, 0x10d00000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10d00000002L

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10d00000003L

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v6, "stable-width-px: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v6, "stable-height-px: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v3, "stable-density-dpi: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    new-instance v3, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v3}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/KeyguardManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    const-wide v7, 0x10400000004L

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10800000005L

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    const-wide v8, 0x10d00000006L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000007L

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v7, "total-ram: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "low-ram: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "max-cores: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v3, "has-secure-screen-lock: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {v3}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget v6, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz v6, :cond_5

    if-eqz v1, :cond_4

    const-wide v7, 0x10d00000008L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    if-eqz v2, :cond_5

    const-string/jumbo v6, "opengl-version: 0x"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    const/4 v3, 0x0

    if-nez v6, :cond_6

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string/jumbo v7, "Warning: couldn\'t get EGL"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    move/from16 p3, v3

    goto/16 :goto_6

    :cond_6
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    invoke-interface {v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v9, 0x0

    invoke-interface {v6, v7, v9, v3, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string/jumbo v7, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    aget v9, v13, v3

    new-array v14, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v7, v14, v9, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string/jumbo v7, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/16 v9, 0x3057

    const/16 v10, 0x3056

    const/16 v15, 0x3038

    filled-new-array {v9, v12, v10, v12, v15}, [I

    move-result-object v9

    const/16 v10, 0x3098

    filled-new-array {v10, v8, v15}, [I

    move-result-object v15

    new-array v8, v12, [I

    move v10, v3

    move/from16 p2, v12

    :goto_2
    aget v12, v13, v3

    if-ge v10, v12, :cond_d

    aget-object v12, v14, v10

    move/from16 p3, v3

    const/16 v3, 0x3027

    invoke-interface {v6, v7, v12, v3, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v3, v8, p3

    const/16 v12, 0x3050

    if-ne v3, v12, :cond_a

    :goto_3
    move-object v3, v8

    move v12, v10

    :cond_9
    move-object v10, v15

    goto :goto_5

    :cond_a
    aget-object v3, v14, v10

    const/16 v12, 0x3033

    invoke-interface {v6, v7, v3, v12, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v3, v8, p3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    aget-object v3, v14, v10

    const/16 v12, 0x3040

    invoke-interface {v6, v7, v3, v12, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v3, v8, p3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    move-object v3, v8

    aget-object v8, v14, v10

    move v12, v10

    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_4

    :cond_c
    move-object v3, v8

    move v12, v10

    :goto_4
    aget v8, v3, p3

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_9

    aget-object v8, v14, v12

    move-object v10, v15

    invoke-static/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    :goto_5
    add-int/lit8 v8, v12, 0x1

    move-object v15, v10

    move v10, v8

    move-object v8, v3

    move/from16 v3, p3

    goto :goto_2

    :cond_d
    move/from16 p3, v3

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :goto_6
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move/from16 v6, p3

    :goto_7
    array-length v7, v3

    if-ge v6, v7, :cond_10

    if-eqz v1, :cond_e

    const-wide v7, 0x20900000009L

    aget-object v9, v3, v6

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_e
    if-eqz v2, :cond_f

    const-string/jumbo v7, "opengl-extensions: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v7, v3

    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    if-eqz v1, :cond_11

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x2090000000aL

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_11
    if-eqz v2, :cond_12

    const-string/jumbo v8, "shared-libraries: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_9
    array-length v6, v0

    if-ge v3, v6, :cond_16

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_15

    if-eqz v1, :cond_14

    const-wide v7, 0x2090000000bL

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_14
    if-eqz v2, :cond_15

    const-string/jumbo v6, "features: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    if-eqz v1, :cond_17

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_17
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
