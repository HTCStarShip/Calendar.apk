.class Lcom/htc/calendar/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/htc/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public isCheckCrossDayEvent:Z

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/calendar/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .parameter "isCheckCrossDayEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 141
    iput-wide p2, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    .line 142
    iput p4, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->numDays:I

    .line 143
    iput-object p5, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 144
    iput-object p6, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 145
    iput-object p7, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 146
    iput-boolean p8, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->isCheckCrossDayEvent:Z

    .line 147
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/htc/calendar/EventLoader;)V
    .locals 10
    .parameter "eventLoader"

    .prologue
    .line 153
    invoke-static {}, Lcom/htc/calendar/EventLoader;->access$200()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/htc/calendar/EventLoader;->access$300()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/htc/calendar/EventLoader;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    iget v6, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v7, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/htc/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/htc/calendar/EventLoader;->access$400(Lcom/htc/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->isCheckCrossDayEvent:Z

    invoke-static/range {v0 .. v9}, Lcom/htc/calendar/Event;->loadEvents(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    .line 157
    iget v0, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/htc/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/htc/calendar/EventLoader;->access$400(Lcom/htc/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 158
    #getter for: Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/calendar/EventLoader;->access$000(Lcom/htc/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    #getter for: Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/calendar/EventLoader;->access$000(Lcom/htc/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public skipRequest(Lcom/htc/calendar/EventLoader;)V
    .locals 2
    .parameter "eventLoader"

    .prologue
    .line 165
    #getter for: Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/calendar/EventLoader;->access$000(Lcom/htc/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method
