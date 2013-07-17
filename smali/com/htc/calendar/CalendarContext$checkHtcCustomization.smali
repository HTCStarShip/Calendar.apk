.class public Lcom/htc/calendar/CalendarContext$checkHtcCustomization;
.super Ljava/lang/Thread;
.source "CalendarContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "checkHtcCustomization"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "checkHtcCustomization"


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarContext;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarContext;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/calendar/CalendarContext$checkHtcCustomization;->this$0:Lcom/htc/calendar/CalendarContext;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    const-string v1, "checkHtcCustomization"

    const-string v2, "checkHtcCustomization"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 125
    iget-object v1, p0, Lcom/htc/calendar/CalendarContext$checkHtcCustomization;->this$0:Lcom/htc/calendar/CalendarContext;

    invoke-virtual {v1}, Lcom/htc/calendar/CalendarContext;->loadStartActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "checkHtcCustomization"

    const-string v2, "checkHtcCustomization() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
