package com.example.miscalificaciones;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class Landing extends AppCompatActivity {
    public static final String user="names";
    TextView txtUser;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_landing);
        txtUser =(TextView)findViewById(R.id.username);
        String user = getIntent().getStringExtra("names");
        txtUser.setText("¡Bienvenido "+ user +"!");
    }

    public void cerrarapp(View view){
        finish();
    }

    public void ver_notasMate(View view){
        Intent i = new Intent(this, Mate_Notas.class);
        startActivity(i);
    }

    public void ver_notasProgra(View view){
        Intent i = new Intent(this, Notas_Progra.class);
        startActivity(i);
    }
}
