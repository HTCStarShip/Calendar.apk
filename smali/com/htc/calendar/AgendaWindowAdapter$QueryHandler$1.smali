.class Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;
    invoke-static {v0}, Lcom/htc/calendar/AgendaWindowAdapter;->access$800(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    new-instance v1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter;->access$900(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 908
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    new-instance v1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter;->access$900(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    goto :goto_0
.end method
