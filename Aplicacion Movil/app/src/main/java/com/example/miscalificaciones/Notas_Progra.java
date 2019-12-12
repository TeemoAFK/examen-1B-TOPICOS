package com.example.miscalificaciones;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

import org.w3c.dom.Document;

import javax.annotation.Nullable;

public class Notas_Progra extends AppCompatActivity {
    private FirebaseFirestore db;
    TextView txtNota1;
    TextView txtNota2;
    TextView txtNota3;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_notas__progra);
        db=FirebaseFirestore.getInstance();

        txtNota1 = (TextView) findViewById(R.id.nota1);
        txtNota2 = (TextView) findViewById(R.id.nota2);
        txtNota3 = (TextView) findViewById(R.id.nota3);


        db.collection("Notas").document("Programacion").addSnapshotListener(new EventListener<DocumentSnapshot>() {
            @Override
            public void onEvent(@Nullable DocumentSnapshot documentSnapshot, @Nullable FirebaseFirestoreException e) {
                if(documentSnapshot.exists()){
                    String Nota1,Nota2,Nota3;

                    if (documentSnapshot.contains("Nota1")){
                        Nota1=documentSnapshot.getString("Nota1");
                        txtNota1.setText(Nota1);
                    }
                    if (documentSnapshot.contains("Nota2")){
                        Nota2=documentSnapshot.getString("Nota2");
                        txtNota2.setText(Nota2);
                    }
                    if (documentSnapshot.contains("Nota3")){
                        Nota3=documentSnapshot.getString("Nota3");
                        txtNota3.setText(Nota3);
                    }

                }
            }
        });

    }

    public void cerrarapp(View view){
        finish();
    }



}
